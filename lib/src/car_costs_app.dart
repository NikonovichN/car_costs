import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation/router.dart';
import '/src/theme/providers.dart';
import '/src/features/settings/application/dark_theme_controller.dart';
import '/src/features/settings/application/localization_controller.dart';

class CarCostsApp extends ConsumerWidget {
  const CarCostsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: to think about application layer for app to avoid spaghetti code
    final isDarkTheme = ref.watch(darkThemeControllerProvider).readValue();
    final locale = ref.watch(localizationControllerProvider).readValue();

    final router = ref.read(routerProvider);
    final lightTheme = ref.read(lightThemeProvider);
    final darkTheme = ref.read(darkThemeProvider);

    return MaterialApp.router(
      routerConfig: router,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    );
  }
}
