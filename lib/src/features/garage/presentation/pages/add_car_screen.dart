import 'package:car_costs/src/navigation/route_paths.dart';
import 'package:car_costs/src/widgets/buttons.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:car_costs/src/widgets/text_editor_app.dart';
import 'package:go_router/go_router.dart';

class AddCarScreen extends ConsumerStatefulWidget {
  const AddCarScreen({super.key});

  @override
  AddCarScreenState createState() => AddCarScreenState();
}

class AddCarScreenState extends ConsumerState<AddCarScreen> {
  final _vinController = TextEditingController();
  final _manufactureController = TextEditingController();
  final _modelController = TextEditingController();
  final _generationController = TextEditingController();
  final _yearController = TextEditingController();
  final _odometerController = TextEditingController();

  @override
  void dispose() {
    _vinController.dispose();
    _manufactureController.dispose();
    _modelController.dispose();
    _generationController.dispose();
    _yearController.dispose();
    _odometerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final routePaths = ref.read(routePathsProvider);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ListView(
        padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
        children: [
          // TODO: translation
          const Text('Add car'),
          const Text('Add car'),
          TextEditorApp(
            placeholder: 'VIN code',
            controller: _vinController,
          ),
          // TODO: sholud be drop-down list
          TextEditorApp(
            placeholder: 'Manufacture',
            controller: _manufactureController,
          ),
          TextEditorApp(
            placeholder: 'Model',
            controller: _modelController,
          ),
          TextEditorApp(
            placeholder: 'Generation',
            controller: _generationController,
          ),
          TextEditorApp(
            placeholder: 'Year',
            keyboardType: TextInputType.datetime,
            controller: _yearController,
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextEditorApp(
                  placeholder: 'Odometer',
                  keyboardType: TextInputType.number,
                  controller: _odometerController,
                ),
              ),
              const SizedBox(width: 20),
              // TODO: should be drop-down list
              const Text('km'),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () => context.goNamed(routePaths.garage),
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 20),
              FullFilledButton(
                onPressed: () => print('save'),
                text: const Text('Save'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
