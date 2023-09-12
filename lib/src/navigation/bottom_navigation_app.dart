import 'package:car_costs/src/config/providers.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants.dart';
import 'navigation_shell_provider.dart';
import '../widgets/navigation.dart';

///
/// This Widget should be used in tandem with [NavigationShellProvider]
///
class BottomNavigationApp extends ConsumerWidget {
  const BottomNavigationApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationShell = NavigationShellProvider.of(context).navigationShell;
    final iconPaths = ref.read(iconPathsProvider);
    final routePaths = ref.read(routePathsProvider);

    return BottomNavigationBarApp(
      currentIndex: navigationShell.currentIndex,
      onTap: navigationShell.goBranch,
      items: [
        BottomBarItemApp(
          iconPath: iconPaths.homeSvg,
          label: routePaths.dashboard,
        ),
        BottomBarItemApp(
          iconPath: iconPaths.activitiesSvg,
          label: routePaths.activities,
        ),
        BottomBarItemApp(
          iconPath: iconPaths.currencySvg,
          label: routePaths.expenses,
        ),
        BottomBarItemApp(
          iconPath: iconPaths.settingsSvg,
          label: routePaths.settings,
        ),
        BottomBarItemApp(
          iconPath: iconPaths.garageSvg,
          label: routePaths.garage,
        ),
      ],
    );
  }
}
