import 'package:flutter/material.dart';

import 'package:car_costs/src/navigation/bottom_navigation_app.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Settings screen'),
      ),
      bottomNavigationBar: BottomNavigationApp(),
    );
  }
}
