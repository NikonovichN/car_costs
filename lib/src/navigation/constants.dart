import 'package:flutter_riverpod/flutter_riverpod.dart';

final routePathsProvider = Provider<RoutePaths>((_) => const RoutePaths());

class RoutePaths {
  const RoutePaths();

  final dashboard = 'dashboard';
  final activities = 'activities';
  final expenses = 'expenses';
  final settings = 'settings';
  final garage = 'garage';
}
