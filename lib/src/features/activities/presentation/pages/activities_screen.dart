import 'package:flutter/material.dart';

import 'package:car_costs/src/navigation/bottom_navigation_app.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Activities page'),
      ),
      bottomNavigationBar: BottomNavigationApp(),
    );
  }
}
