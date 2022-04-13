import 'package:financial_app/src/auth/ui/widgets/circle_painter.dart';
import 'package:financial_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

import 'dart:math';
import 'package:vector_math/vector_math.dart' show radians, Vector3;

class RadialMenu extends StatefulWidget {
  const RadialMenu({Key? key}) : super(key: key);

  @override
  createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const RadialAnimation();
  }
}

class RadialAnimation extends StatelessWidget {
  final circleSize = 150;

  const RadialAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _drawCircleLine(300, ringColor, 3, PaintingStyle.stroke),
        _drawCircleLine(220, whiteColor, 2, PaintingStyle.stroke),
        _drawCircleLine(218, ringColor, 1, PaintingStyle.fill),
        _drawCircleLine(180, primaryColor, 1, PaintingStyle.fill),
        _buildButton(340, 'assets/images/photo1.jpeg'),
        _buildButton(270, 'assets/images/photo2.jpeg'),
        _buildButton(200, 'assets/images/photo3.jpeg'),
        _buildButton(50,  'assets/images/photo4.jpeg'),
        _buildButton(130, 'assets/images/photo5.jpeg'),
        _drawCircleLine(125, buttonColor, 4, PaintingStyle.stroke),
        _drawCircleLine(121, whiteColor, 1, PaintingStyle.fill),
        const CircleAvatar(
          radius: 54,
          backgroundImage: AssetImage('assets/images/photo6.jpeg'),
        ),
      ],
    );
  }

  _drawCircleLine(
      double size, Color color, double stroke, PaintingStyle style) {
    return CustomPaint(
      size: Size(size, size),
      painter: CirclePainter(
        color: color,
        stroke: stroke,
        style: style,
      ),
    );
  }

  _buildButton(double angle, String photo) {
    final double rad = radians(angle);
    return Transform(
      transform: Matrix4.identity()
        ..translate((circleSize) * cos(rad), (circleSize) * sin(rad)),
      child: CircleAvatar(
        radius: 32,
        backgroundColor: whiteColor,
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(photo),
        ),
      ),
    );
  }
}
