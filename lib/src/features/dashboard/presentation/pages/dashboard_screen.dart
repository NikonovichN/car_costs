import 'package:flutter/material.dart';

import 'package:car_costs/src/navigation/bottom_navigation_app.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home page'),
      ),
      bottomNavigationBar: BottomNavigationApp(),
    );
  }
}
