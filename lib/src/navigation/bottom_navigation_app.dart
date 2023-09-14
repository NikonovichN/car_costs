import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation_shell_provider.dart';
import '../widgets/navigation.dart';
import '../config/providers.dart';

///
/// This Widget should be used in tandem with [NavigationShellProvider]
///
class BottomNavigationApp extends ConsumerWidget {
  const BottomNavigationApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationShell = NavigationShellProvider.of(context).navigationShell;
    final iconPaths = ref.read(iconPathsProvider);
    final localizations = AppLocalizations.of(context)!;

    return BottomNavigationBarApp(
      currentIndex: navigationShell.currentIndex,
      onTap: navigationShell.goBranch,
      items: [
        BottomBarItemApp(
          iconPath: iconPaths.homeSvg,
          label: localizations.navigationBarButtonHome,
        ),
        BottomBarItemApp(
          iconPath: iconPaths.activitiesSvg,
          label: localizations.navigationBarButtonJournal,
        ),
        BottomBarItemApp(
          iconPath: iconPaths.currencySvg,
          label: localizations.navigationBarButtonCurrency,
        ),
        BottomBarItemApp(
          iconPath: iconPaths.settingsSvg,
          label: localizations.navigationBarButtonSettings,
        ),
        BottomBarItemApp(
          iconPath: iconPaths.garageSvg,
          label: localizations.navigationBarButtonGarage,
        ),
      ],
    );
  }
}
