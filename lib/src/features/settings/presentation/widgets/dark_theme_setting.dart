import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../application/dark_theme_controller.dart';

class DarkThemeSetting extends ConsumerWidget {
  const DarkThemeSetting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(darkThemeControllerProvider).readValue();

    return SwitchListTile(
      title: Text(AppLocalizations.of(context)!.dark_theme),
      value: isDarkTheme,
      onChanged: (value) => ref
          .read(darkThemeControllerProvider.notifier)
          .setDarkThemeValue(value),
    );
  }
}
