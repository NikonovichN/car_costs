import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/car_costs_app.dart';
import 'src/config/providers.dart' as providers;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final container = ProviderContainer();
  await providers.initializeProviders(container);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const CarCostsApp(),
    ),
  );
}
