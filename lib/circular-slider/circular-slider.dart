import 'package:flutter/material.dart';
import 'package:neu_sphere_controller/circular-slider/circular-slider-painter.dart';

class CircularSlider extends StatelessWidget {
  final double angle;
  final Color trackColor;
  final Gradient progressGradient;

  CircularSlider({
    required this.angle,
    required this.trackColor,
    required this.progressGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: CustomPaint(
        painter: CircularSliderPainter(
          angle: angle,
          trackColor: trackColor,
          progressGradient: progressGradient,
        ),
      ),
    );
  }
}
