import 'package:flutter/material.dart';

class FloretWidget extends StatelessWidget {
  const FloretWidget({
    required this.radius,
    super.key,
  });

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration:
          const BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
    );
  }
}
