import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants.dart';
import 'navigation_shell_provider.dart';

///
/// This Widget should be used in tandem with [NavigationShellProvider]
///
class BottomNavigationApp extends ConsumerWidget {
  const BottomNavigationApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationShell = NavigationShellProvider.of(context).navigationShell;
    final routePaths = ref.read(routePathsProvider);

    return BottomNavigationBar(
      currentIndex: navigationShell.currentIndex,
      onTap: (int index) => navigationShell.goBranch(index),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: routePaths.dashboard,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.access_time_outlined),
          label: routePaths.activities,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.monetization_on_outlined),
          label: routePaths.expenses,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings),
          label: routePaths.settings,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.garage_rounded),
          label: routePaths.garage,
        ),
      ],
    );
  }
}
