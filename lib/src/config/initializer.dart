import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';

import 'providers.dart';
import 'firebase_options.dart';

Future<ProviderContainer> initializer() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  const envFileName = String.fromEnvironment(
    'env_file',
    defaultValue: 'env/.dev.env',
  );
  await dotenv.load(fileName: envFileName);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final container = ProviderContainer();
  await initializeProviders(container);

  return container;
}
