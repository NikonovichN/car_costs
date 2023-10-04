import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/car_costs_app.dart';
import 'src/config/initializer.dart';

void main() async {
  final containerProvider = await initializer();

  runApp(
    ProviderScope(
      parent: containerProvider,
      child: const CarCostsApp(),
    ),
  );
}
