import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user_entity.dart';

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepositoryImpl());

abstract class UserRepository {
  Future<UserEntity> logInViaEmailPassword(String email, String password);
  Future<UserEntity> signUpViaEmailPassword(String email, String password);
  Future<void> logOut();
}

class UserRepositoryImpl implements UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepositoryImpl() : _firebaseAuth = FirebaseAuth.instance;

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

    return _parseCredentials(credentials);
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  _parseCredentials(UserCredential credentials) => UserEntity(
        uid: credentials.user!.uid,
        token: credentials.credential?.token,
        accessToken: credentials.credential?.accessToken,
      );
}
