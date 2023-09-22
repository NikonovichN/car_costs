import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'route_paths.dart';
import '../features/features.dart';

final branchesProvider = Provider(
  (ref) {
    final routePaths = ref.read(routePathsProvider);

    return [
      StatefulShellBranch(
        routes: [
          GoRoute(
            name: routePaths.dashboard,
            path: '/${routePaths.dashboard}',
            builder: (context, state) => const DashboardScreen(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            name: routePaths.journal,
            path: '/${routePaths.journal}',
            builder: (context, state) => const JournalScreen(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            name: routePaths.expenses,
            path: '/${routePaths.expenses}',
            builder: (context, state) => const ExpensesScreen(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            name: routePaths.settings,
            path: '/${routePaths.settings}',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            name: routePaths.garage,
            path: '/${routePaths.garage}',
            builder: (context, state) => const GarageScreen(),
          ),
        ],
      ),
    ];
  },
);
