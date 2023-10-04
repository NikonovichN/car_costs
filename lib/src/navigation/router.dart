import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'route_paths.dart';
import 'navigation_shell_provider.dart';
import 'routes.dart';
import '../features/features.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

final routerKeyProvider = Provider((ref) => _navigatorKey);

final routerInformationProvider = ChangeNotifierProvider(
  (ref) => ref.watch(routerProvider).routeInformationProvider,
);

final routerProvider = Provider(
  (ref) {
    final user = ref.watch(userControllerProvider);

    final routePaths = ref.read(routePathsProvider);
    final branches = ref.read(branchesProvider);
    final authRoute = ref.read(authRouteProvider);

    return GoRouter(
      navigatorKey: _navigatorKey,
      initialLocation: '/${routePaths.dashboard}',
      routes: [
        StatefulShellRoute.indexedStack(
          branches: branches,
          builder: (context, goRouterState, navigationShell) {
            return NavigationShellProvider(
              navigationShell: navigationShell,
              child: StackedPages(content: navigationShell),
            );
          },
        ),
        authRoute,
      ],
      redirect: (context, state) => user == null ? '/${routePaths.auth}' : null,
    );
  },
);
