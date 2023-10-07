import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:car_costs/src/config/providers.dart';

final carsRemoteDataSourceProvider =
    Provider.autoDispose<CarsRemoteDataSource>(CarsRemoteDataSourceImpl.new);

abstract class CarsRemoteDataSource {
  Future<void> writeValue(List<String> path, Object jsonData);
  Future<void> updateValue(List<String> path, Object jsonData);
  Future<void> deleteValue(List<String> path);
  Future<Object> readValue(List<String> path);
}

class CarsRemoteDataSourceImpl implements CarsRemoteDataSource {
  final FirebaseDatabase _database;

  CarsRemoteDataSourceImpl(Ref ref)
      : _database = ref.read(firebaseDatabaseProvider);

  @override
  Future<void> writeValue(List<String> path, Object jsonData) async {
    await _database.ref(path.join()).set(jsonData);
  }

  @override
  Future<void> updateValue(List<String> path, Object jsonData) async {
    await _database
        .ref(path.sublist(0, path.length - 1).join())
        .update(Map.from({path.last: jsonData}));
  }

  @override
  Future<void> deleteValue(List<String> path) async {
    await _database.ref(path.join()).remove();
  }

  @override
  Future<String> readValue(List<String> path) async {
    final snapshot = await _database.ref(path.join()).get();

    if (snapshot.exists) {
      return jsonEncode(snapshot.value);
    }

    // TODO: should becorrect error handler
    throw Exception("No data");
  }
}
