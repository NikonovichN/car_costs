import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cars_controller.dart';
import '../data/cars_repository.dart';
import '../domain/cars_entity.dart';
import '../../auth/application/user_controller.dart';
import 'package:car_costs/src/navigation/route_paths.dart';
import 'package:car_costs/src/navigation/router.dart';
import 'package:car_costs/src/utils/errors.dart';

final carControllerProvider =
    StateNotifierProvider.autoDispose<CarController, AsyncValue>(
        CarController.new);

class CarController extends StateNotifier<AsyncValue> {
  final Ref ref;
  final CarsRepository _carsRepository;
  final RoutePaths _routePaths;

  CarController(this.ref)
      : _carsRepository = ref.read(carsRepositoryProvider),
        _routePaths = ref.read(routePathsProvider),
        super(const AsyncData(null));

  Future<void> updateCar(Vin vin, CarEntity carEntity) async {
    state = const AsyncValue.loading();

    final user = ref.read(userControllerProvider);
    final router = ref.read(routerProvider);

    try {
      if (user == null) {
        throw NoUserDataException();
      }

      await _carsRepository.updateCar(user.uid, vin, carEntity);
      state = const AsyncValue.data(null);

      ref.read(carsControllerProvider.notifier).getAllCars();
      router.goNamed(_routePaths.garage);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> deleteCar(Vin vin) async {
    state = const AsyncValue.loading();

    final user = ref.read(userControllerProvider);
    final router = ref.read(routerProvider);

    try {
      if (user == null) {
        throw NoUserDataException();
      }

      await _carsRepository.deleteCar(user.uid, vin);
      state = const AsyncValue.data(null);
      router.goNamed(_routePaths.garage);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
