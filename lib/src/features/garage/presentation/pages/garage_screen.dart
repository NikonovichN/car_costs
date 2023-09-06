import 'package:flutter/material.dart';

import 'package:car_costs/src/navigation/bottom_navigation_app.dart';

class GarageScreen extends StatelessWidget {
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Garage page'),
      ),
      bottomNavigationBar: BottomNavigationApp(),
    );
  }
}
