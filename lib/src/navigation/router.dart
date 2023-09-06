import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants.dart';
import 'navigation_shell_provider.dart';
import 'routes.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

final routerProvider = Provider<GoRouter>(
  (ref) {
    final routePaths = ref.read(routePathsProvider);
    final branches = ref.read(branchesProvider);

    return GoRouter(
      navigatorKey: _navigatorKey,
      initialLocation: '/${routePaths.dashboard}',
      routes: [
        StatefulShellRoute.indexedStack(
          branches: branches,
          builder: (context, goRouterState, navigationShell) =>
              NavigationShellProvider(navigationShell),
        ),
      ],
    );
  },
);
