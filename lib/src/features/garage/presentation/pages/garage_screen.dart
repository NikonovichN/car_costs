import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:car_costs/src/navigation/route_paths.dart';

class GarageScreen extends ConsumerWidget {
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final routePaths = ref.read(routePathsProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Garage page'),
        ElevatedButton(
          onPressed: () => context.goNamed(routePaths.addCar),
          child: const Text('add car'),
        )
      ],
    );
  }
}
