import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/cars_entity.dart';
import '../data/cars_repository.dart';
import '../../auth/application/user_controller.dart';
import 'package:car_costs/src/utils/errors.dart';

final carsControllerProvider =
    StateNotifierProvider<CarsController, AsyncValue<CarsEntity?>>(
        CarsController.new);

class CarsController extends StateNotifier<AsyncValue<CarsEntity?>> {
  final CarsRepository _carsRepository;
  final Ref ref;

  CarsController(this.ref)
      : _carsRepository = ref.read(carsRepositoryProvider),
        super(const AsyncValue.loading()) {
    getAllCars();
  }

  Future<void> getAllCars() async {
    state = const AsyncValue.loading();

    final user = ref.read(userControllerProvider);

    try {
      if (user == null) {
        throw NoUserDataException();
      }

      final cars = await _carsRepository.readAllCars(user.uid);
      state = AsyncValue.data(cars);
    } on NoDataException {
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
