import 'dart:math';

import 'package:flutter/material.dart';

import 'floret_widget.dart';
import 'ligule_widget.dart';

class FlowerWidget extends StatelessWidget {
  const FlowerWidget({
    required this.radius,
    super.key,
    this.numPetals = 9,
  });

  final double radius;
  final int numPetals;

  @override
  Widget build(BuildContext context) {
    final Size flowerSize = Size(radius * 5.5, radius * 5.5);
    final Random random = Random();

    return SizedBox(
      width: flowerSize.width,
      height: flowerSize.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          for (int i = 0; i < numPetals; i++)
            Transform.rotate(
              angle: (i * 2 * 3.141592653589793) / numPetals +
                  random.nextDouble() * 0.1,
              child: Align(
                alignment: Alignment.topCenter,
                child: LiguleWidget(
                    length: radius * 1.8 + random.nextDouble() * 0.4 * radius),
              ),
            ),
          // Dibujar el centro (flósculo)
          FloretWidget(radius: radius),
        ],
      ),
    );
  }
}
