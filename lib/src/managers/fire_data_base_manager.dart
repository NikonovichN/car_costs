import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:car_costs/src/config/providers.dart';
import 'package:car_costs/src/utils/errors.dart';

final fireDataBaseManagerProvider =
    Provider<FireDataBaseManager>(FireDataBaseManagerImpl.new);

abstract class FireDataBaseManager {
  Future<void> updateValue(List<String> path, Map<String, dynamic> jsonData);
  Future<void> deleteValue(List<String> path);
  Future<Map> readValue(List<String> path);
}

class FireDataBaseManagerImpl implements FireDataBaseManager {
  final FirebaseDatabase _database;

  FireDataBaseManagerImpl(Ref ref)
      : _database = ref.read(firebaseDatabaseProvider);

  @override
  Future<void> updateValue(
    List<String> path,
    Map<String, dynamic> jsonData,
  ) async {
    await _database.ref(path.join()).update(jsonData);
  }

  @override
  Future<void> deleteValue(List<String> path) async {
    await _database.ref(path.join()).remove();
  }

  @override
  Future<Map> readValue(List<String> path) async {
    final snapshot = await _database.ref(path.join()).get();

    if (snapshot.exists) {
      return snapshot.value! as Map;
    }

    throw const NoDataException();
  }
}
