import 'package:flutter/material.dart';

import 'bottom_navigation_app.dart';

class GlobalScaffold extends StatelessWidget {
  final Widget body;

  const GlobalScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: const BottomNavigationApp(),
    );
  }
}
