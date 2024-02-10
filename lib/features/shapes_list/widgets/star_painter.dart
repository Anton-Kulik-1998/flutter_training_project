import 'dart:math';

import 'package:flutter/material.dart';

class StarPainter extends CustomPainter {
  StarPainter({super.repaint, required this.color});
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width / 2;

    final outerRadius = radius;
    final innerRadius = radius / 2;
    const spikes = 5; // Количество "лучей" в звезде

    const angle = (pi * 2) / (spikes * 2);

    final path = Path();

    for (int i = 0; i < spikes * 2; i++) {
      double r = (i % 2 == 0) ? outerRadius : innerRadius;
      double x = centerX + cos(i * angle) * r;
      double y = centerY + sin(i * angle) * r;

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
