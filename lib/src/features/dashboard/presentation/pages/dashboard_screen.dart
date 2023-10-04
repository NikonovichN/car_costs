import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../auth/application/authentication_controller.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Home page'),
        Text('Type of build: ${dotenv.get('ENV')}'),
        ElevatedButton(
          onPressed: () =>
              ref.read(authenticationControllerProvider.notifier).logOut(),
          child: const Text('Log out'),
        )
      ],
    );
  }
}
