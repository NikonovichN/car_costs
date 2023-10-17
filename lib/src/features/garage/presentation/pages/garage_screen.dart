import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/cars_controller.dart';

class GarageScreen extends ConsumerWidget {
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final carsController = ref.watch(carsControllerProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return RefreshIndicator(
      onRefresh: ref.read(carsControllerProvider.notifier).getAllCars,
      child: carsController.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                carsController.mapOrNull(
                      data: (data) => Center(
                        child: data.value == null
                            ? const Text('No data yet.')
                            : Text(data.toString()),
                      ),
                      error: (error) => Text(
                        error.toString(),
                        style: TextStyle(color: colorScheme.error),
                      ),
                    ) ??
                    const SizedBox.shrink(),
              ],
            ),
    );
  }
}
