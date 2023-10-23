import 'package:flutter/material.dart';

import 'package:car_costs/src/theme/colors/colors_extensions.dart';
import 'package:car_costs/src/features/garage/domain/cars_entity.dart';

class CarCard extends StatelessWidget {
  final Vin vin;
  final CarEntity car;

  const CarCard({
    super.key,
    required this.vin,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorSchemeExt = Theme.of(context).extension<ColorsAppExt>()!;

    return Card(
      child: Stack(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.red,
            constraints: BoxConstraints(
              maxWidth: size.width * .5,
              minHeight: 113,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.all(10),
              constraints: BoxConstraints(
                minWidth: size.width * .6,
                minHeight: 113,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    colorSchemeExt.startBackgroundGradient!.withOpacity(.2),
                    colorSchemeExt.endBackgroundGradient!.withOpacity(.1),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('${car.manufacture} ${car.model}'),
                  Text(car.year),
                  Text('${car.odometer} ${car.metrics}'),
                  Text('VIN: $vin'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
