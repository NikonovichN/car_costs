import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user_entity.dart';
import 'user_remote_datasource.dart';

final userRepositoryProvider = Provider<UserRepository>(UserRepositoryImpl.new);

abstract class UserRepository {
  Future<UserEntity> logInViaEmailPassword(String email, String password);
  Future<UserEntity> signUpViaEmailPassword(String email, String password);
  Future<void> logOut();
}

class UserRepositoryImpl implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(Ref ref)
      : _firebaseAuth = FirebaseAuth.instance,
        _userRemoteDataSource = ref.read(userRemoteDataSourceProvider);

  @override
  Future<UserEntity> logInViaEmailPassword(
    String email,
    String password,
  ) async {
    final credentials = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return _parseCredentials(credentials);
  }

  @override
  Future<UserEntity> signUpViaEmailPassword(
    String email,
    String password,
  ) async {
    final credentials = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final userEntity = _parseCredentials(credentials);
    await _userRemoteDataSource.addUserToDataBase(userEntity.uid);

    return userEntity;
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  UserEntity _parseCredentials(UserCredential credentials) => UserEntity(
        uid: credentials.user!.uid,
        token: credentials.credential?.token,
        accessToken: credentials.credential?.accessToken,
      );
}
