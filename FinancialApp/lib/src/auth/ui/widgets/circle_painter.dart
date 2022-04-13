import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final Color color;
  final double stroke;
  final PaintingStyle style;
  late Paint _paint;

  CirclePainter(
      {required this.color, required this.stroke, required this.style}) {
    _paint = Paint()
      ..color = color
      ..strokeWidth = stroke
      ..style = style;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
      _paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
