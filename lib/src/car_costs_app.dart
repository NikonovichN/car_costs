import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation/router.dart';

class CarCostsApp extends ConsumerWidget {
  const CarCostsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);

    return MaterialApp.router(
      theme: ThemeData(primarySwatch: Colors.cyan),
      routerConfig: router,
    );
  }
}
