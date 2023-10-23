import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/cars_entity.dart';
import 'package:car_costs/src/utils/errors.dart';
import 'package:car_costs/src/config/providers.dart';
import 'package:car_costs/src/config/firebase_database_paths.dart';
import 'package:car_costs/src/managers/fire_data_base_manager.dart';

final carsRepositoryProvider =
    Provider.autoDispose<CarsRepository>(CarsRepositoryImpl.new);

abstract class CarsRepository {
  Future<void> updateCar(String userId, Vin vin, CarEntity carEntity);
  Future<void> deleteCar(String userId, Vin vin);
  Future<CarsEntity?> readAllCars(String userId);
}

class CarsRepositoryImpl implements CarsRepository {
  final FireDataBaseManager _fireDataBase;
  final DataBasePaths _dataBasePaths;

  CarsRepositoryImpl(Ref ref)
      : _fireDataBase = ref.read(fireDataBaseManagerProvider),
        _dataBasePaths = ref.read(dataBasePathsProvider);

  @override
  Future<void> updateCar(String userId, Vin vin, CarEntity carEntity) async {
    await _fireDataBase.updateValue(
      _dataBasePaths.car(userId, vin),
      carEntity.toJson(),
    );
  }

  @override
  Future<void> deleteCar(String userId, Vin vin) async {
    await _fireDataBase.deleteValue(_dataBasePaths.car(userId, vin));
  }

  @override
  Future<CarsEntity?> readAllCars(String userId) async {
    final data = await _fireDataBase.readValue(_dataBasePaths.cars(userId));

    if (data is! Map) {
      throw const NoDataException();
    }

    return CarsEntity.fromJson({"cars": data});
  }
}
