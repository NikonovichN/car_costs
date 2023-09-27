import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

  const envFileName = String.fromEnvironment(
    'env_file',
    defaultValue: 'env/.dev.env',
  );
  await dotenv.load(fileName: envFileName);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const CarCostsApp(),
    ),
  );
}
