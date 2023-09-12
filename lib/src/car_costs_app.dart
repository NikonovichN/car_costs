import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation/router.dart';
import '/src/features/settings/application/dark_theme_controller.dart';
import '/src/theme/providers.dart';

class CarCostsApp extends ConsumerWidget {
  const CarCostsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    final isDarkTheme = ref.watch(darkThemeControllerProvider).readValue();
    final lightTheme = ref.read(lightThemeProvider);
    final darkTheme = ref.read(darkThemeProvider);

    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      routerConfig: router,
    );
  }
}
