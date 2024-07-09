import 'dart:math';

import 'package:flutter/material.dart';

class LiguleWidget extends StatelessWidget {
  const LiguleWidget({
    required this.length,
    super.key,
  });

  final double length;

  @override
  Widget build(BuildContext context) {
    final Random random = Random();

    final double width = length * 0.2;
    final double heigth = length;
    final double radius = length * (random.nextDouble() + 0.1) * 0.5;
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        color: Colors.grey.shade500.withOpacity(0.8),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
