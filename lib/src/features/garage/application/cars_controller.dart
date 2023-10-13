import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/cars_entity.dart';
import '../data/cars_repository.dart';

final carsControllerProvider =
    StateNotifierProvider<CarsController, AsyncValue<CarsEntity?>>(
        CarsController.new);

class CarsController extends StateNotifier<AsyncValue<CarsEntity?>> {
  final CarsRepository _carsRepository;

  CarsController(Ref ref)
      : _carsRepository = ref.read(carsRepositoryProvider),
        super(const AsyncValue.loading()) {
    getAllCars();
  }

  Future<void> getAllCars() async {
    state = const AsyncValue.loading();

    try {
      final cars = await _carsRepository.readAllCars();
      state = AsyncValue.data(cars);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
