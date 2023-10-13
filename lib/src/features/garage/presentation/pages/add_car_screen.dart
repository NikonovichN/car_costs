import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/cars_entity.dart';
import '../../application/car_controller.dart';
import 'package:car_costs/src/widgets/text_editor_app.dart';
import 'package:car_costs/src/navigation/route_paths.dart';
import 'package:car_costs/src/widgets/buttons.dart';

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
    final colorScheme = Theme.of(context).colorScheme;
    final carController = ref.watch(carControllerProvider);

    return carController.isLoading
        ? const Center(child: CircularProgressIndicator())
        : GestureDetector(
            onTap: FocusManager.instance.primaryFocus?.unfocus,
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
                if (carController.hasError)
                  Text(
                    carController.error.toString(),
                    style: TextStyle(color: colorScheme.error),
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
                      onPressed: () =>
                          ref.read(carControllerProvider.notifier).addCar(
                                _vinController.text,
                                CarEntity(
                                  manufacture: _manufactureController.text,
                                  model: _modelController.text,
                                  generation: _generationController.text,
                                  year: _yearController.text,
                                  odometer: int.parse(_odometerController.text),
                                  metrics: 'km',
                                  imageUrl: 'imageUrl',
                                  meta: MetaEntity(
                                    createdAt: DateTime.now(),
                                    lastChangeAt: DateTime.now(),
                                  ),
                                  journal: [],
                                ),
                              ),
                      text: const Text('Save'),
                    ),
                  ],
                )
              ],
            ),
          );
  }
}
