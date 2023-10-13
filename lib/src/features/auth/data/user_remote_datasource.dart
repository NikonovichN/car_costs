import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:car_costs/src/config/providers.dart';
import 'package:car_costs/src/config/firebase_database_paths.dart';

final userRemoteDataSourceProvider =
    Provider.autoDispose<UserRemoteDataSource>(UserRemoteDataSourceImpl.new);

abstract class UserRemoteDataSource {
  Future<void> addUserToDataBase(String userId);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseDatabase _database;
  final DataBasePaths _databasePaths;

  UserRemoteDataSourceImpl(Ref ref)
      : _database = ref.read(firebaseDatabaseProvider),
        _databasePaths = ref.read(dataBasePathsProvider);

  @override
  Future<void> addUserToDataBase(String userId) async {
    // Firebase database can't write empty array and objects types
    await _database.ref('${_databasePaths.users}/').update({
      userId: {
        "cars": {
          "journal": "",
          "expenses": "",
        },
        "categories": ""
      },
    });
  }
}
