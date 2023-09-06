import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class NavigationShellProvider extends InheritedWidget {
  final StatefulNavigationShell navigationShell;

  const NavigationShellProvider({
    super.key,
    required this.navigationShell,
    required super.child,
  });

  static NavigationShellProvider? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NavigationShellProvider>();
  }

  static NavigationShellProvider of(BuildContext context) {
    final NavigationShellProvider? result = maybeOf(context);
    assert(result != null, 'No NavigationShell found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(NavigationShellProvider oldWidget) =>
      navigationShell != oldWidget.navigationShell;
}
