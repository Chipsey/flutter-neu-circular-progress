// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neu_sphere_controller/circular-slider/circular-slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const double value = 70;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
                shape: NeumorphicShape.convex,
                surfaceIntensity: 0.5,
                depth: 8,
                color: Colors.grey[300],
              ),
              child: Container(
                width: 300,
                height: 300,
                alignment: Alignment.center,
                child: Text(
                  value.toInt().toString(),
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            CircularSlider(
              angle: 360 * value * 0.01,
              trackColor: Colors.white.withOpacity(0),
              progressGradient: LinearGradient(
                colors: [Colors.blue.withOpacity(0.3), Colors.blue],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
