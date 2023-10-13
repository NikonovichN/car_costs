import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/cars_repository.dart';
import '../domain/cars_entity.dart';

final carControllerProvider =
    StateNotifierProvider.autoDispose<CarController, AsyncValue>(
        CarController.new);

class CarController extends StateNotifier<AsyncValue> {
  final CarsRepository _carsRepository;
  CarController(Ref ref)
      : _carsRepository = ref.read(carsRepositoryProvider),
        super(const AsyncData(null));

  Future<void> addCar(Vin vin, CarEntity carEntity) async {
    state = const AsyncValue.loading();

    try {
      await _carsRepository.addCar(vin, carEntity);
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> updateCar(Vin vin, CarEntity carEntity) async {
    state = const AsyncValue.loading();

    try {
      await _carsRepository.updateCar(vin, carEntity);
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> deleteCar(Vin vin) async {
    state = const AsyncValue.loading();

    try {
      await _carsRepository.deleteCar(vin);
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
