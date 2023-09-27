import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Home page'),
        Text('Type of build: ${dotenv.get('ENV')}'),
      ],
    );
  }
}
