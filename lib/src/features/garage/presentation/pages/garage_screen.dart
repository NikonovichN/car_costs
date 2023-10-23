import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/car_card.dart';
import '../../application/cars_controller.dart';

class GarageScreen extends ConsumerWidget {
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final carsController = ref.watch(carsControllerProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return RefreshIndicator(
      onRefresh: ref.read(carsControllerProvider.notifier).getAllCars,
      child: carsController.map(
        loading: (_) => const Center(child: CircularProgressIndicator()),
        data: (data) => Center(
          child: data.value == null
              ? const Text('No data yet.')
              : ListView(
                  padding: const EdgeInsets.all(16),
                  children: data.value!.cars.entries
                      .map(
                        (carEntity) => Padding(
                          key: ValueKey(carEntity.key),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: CarCard(
                            vin: carEntity.key,
                            car: carEntity.value,
                          ),
                        ),
                      )
                      .toList(),
                ),
        ),
        error: (error) => Text(
          error.toString(),
          style: TextStyle(color: colorScheme.error),
        ),
      ),
    );
  }
}
