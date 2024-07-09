import 'package:flutter/material.dart';

class LiguletCustomPainterWidget extends StatelessWidget {
  const LiguletCustomPainterWidget({
    required this.length,
    super.key,
  });

  final double length;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(length * .2, length),
      painter: LigulePainter(length: length),
    );
  }
}

class LigulePainter extends CustomPainter {
  const LigulePainter({
    required this.length,
  });

  final double length;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = Colors.grey.shade300;
    paint.style = PaintingStyle.fill;

    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final RRect rrect = RRect.fromRectAndRadius(
      rect,
      Radius.circular(length * 0.1),
    );
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
