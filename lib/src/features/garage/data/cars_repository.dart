import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cars_remote_datasource.dart';
import '../domain/cars_entity.dart';
import 'package:car_costs/src/config/providers.dart';
import 'package:car_costs/src/config/firebase_database_paths.dart';

final carsRepositoryProvider =
    Provider.autoDispose<CarsRepository>(CarsRepositoryImpl.new);

abstract class CarsRepository {
  Future<void> addCar(Vin vin, CarEntity carEntity);
  Future<void> updateCar(Vin vin, CarEntity carEntity);
  Future<void> deleteCar(Vin vin);
  Future<CarsEntity?> readAllCars();
}

class CarsRepositoryImpl implements CarsRepository {
  final CarsRemoteDataSource _remoteDataSource;
  final DataBasePaths _dataBasePaths;

  CarsRepositoryImpl(Ref ref)
      : _remoteDataSource = ref.read(carsRemoteDataSourceProvider),
        _dataBasePaths = ref.read(dataBasePathsProvider);

  @override
  Future<void> addCar(Vin vin, CarEntity carEntity) async {
    await _remoteDataSource.writeValue(
      _dataBasePaths.car('userUid', vin),
      carEntity,
    );
  }

  @override
  Future<void> updateCar(Vin vin, CarEntity carEntity) async {
    await _remoteDataSource.updateValue(
      _dataBasePaths.car('userUid', vin),
      carEntity,
    );
  }

  @override
  Future<void> deleteCar(Vin vin) async {
    await _remoteDataSource.deleteValue(
      _dataBasePaths.car('userUid', vin),
    );
  }

  @override
  Future<CarsEntity?> readAllCars() async {
    final cars = await _remoteDataSource.readValue(
      _dataBasePaths.cars('userUid'),
    );

    return CarsEntity.fromJson(cars as Map<String, dynamic>);
  }
}
