import 'package:flutter/material.dart';

import 'package:car_costs/src/navigation/bottom_navigation_app.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Something about expenses'),
      ),
      bottomNavigationBar: BottomNavigationApp(),
    );
  }
}
