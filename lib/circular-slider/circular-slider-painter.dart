import 'package:flutter/material.dart';
import 'dart:math';

class CircularSliderPainter extends CustomPainter {
  final double angle;
  final Color trackColor;
  final Gradient progressGradient;

  CircularSliderPainter({
    required this.angle,
    required this.trackColor,
    required this.progressGradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint trackPaint = Paint()
      ..color = trackColor
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double centerX = size.width / 2;
    double centerY = size.height / 2;

    Offset center = Offset(centerX, centerY);
    double radius = min(centerX, centerY) - 10;

    // Draw the track
    canvas.drawCircle(center, radius, trackPaint);

    double sweepAngle = 2 * pi * (angle / 360);

    // Create a gradient shader for the progress paint
    Rect rect = Rect.fromCircle(center: center, radius: radius);
    Paint progressPaint = Paint()
      ..shader = progressGradient.createShader(rect)
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Draw the progress
    canvas.drawArc(rect, -pi / 2, sweepAngle, false, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
