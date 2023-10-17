import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cars_remote_datasource.dart';
import '../domain/cars_entity.dart';
import 'package:car_costs/src/config/providers.dart';
import 'package:car_costs/src/config/firebase_database_paths.dart';

final carsRepositoryProvider =
    Provider.autoDispose<CarsRepository>(CarsRepositoryImpl.new);

abstract class CarsRepository {
  Future<void> addCar(String userId, Vin vin, CarEntity carEntity);
  Future<void> updateCar(String userId, Vin vin, CarEntity carEntity);
  Future<void> deleteCar(String userId, Vin vin);
  Future<CarsEntity?> readAllCars(String userId);
}

class CarsRepositoryImpl implements CarsRepository {
  final CarsRemoteDataSource _remoteDataSource;
  final DataBasePaths _dataBasePaths;

  CarsRepositoryImpl(Ref ref)
      : _remoteDataSource = ref.read(carsRemoteDataSourceProvider),
        _dataBasePaths = ref.read(dataBasePathsProvider);

  @override
  Future<void> addCar(String userId, Vin vin, CarEntity carEntity) async {
    await _remoteDataSource.updateValue(
      _dataBasePaths.car(userId, vin),
      carEntity.toJson(),
    );
  }

  @override
  Future<void> updateCar(String userId, Vin vin, CarEntity carEntity) async {
    await _remoteDataSource.updateValue(
      _dataBasePaths.car(userId, vin),
      carEntity.toJson(),
    );
  }

  @override
  Future<void> deleteCar(String userId, Vin vin) async {
    await _remoteDataSource.deleteValue(_dataBasePaths.car(userId, vin));
  }

  @override
  Future<CarsEntity?> readAllCars(String userId) async {
    final cars = await _remoteDataSource.readValue(_dataBasePaths.cars(userId));

    return CarsEntity.fromJson({"cars": cars});
  }
}
