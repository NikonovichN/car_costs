import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/car_costs_app.dart';
import 'src/config/providers.dart' as providers;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer();
  await providers.initializeProviders(container);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const CarCostsApp(),
    ),
  );
}
