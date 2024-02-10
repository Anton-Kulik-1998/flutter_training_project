import 'package:flutter/material.dart';
import 'package:flutter_application_2/features/shapes_list/widgets/widgets.dart';

class ShapesListScreen extends StatelessWidget {
  const ShapesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Center(
            child: CustomPaint(
              painter: TrianglePainter(color: Colors.red),
              size: const Size(200, 200),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: CustomPaint(
              painter: CirclePainter(color: Colors.yellow),
              size: const Size(200, 200),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: CustomPaint(
              painter: StarPainter(color: Colors.blue),
              size: const Size(200, 200),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: CustomPaint(
              painter: TrianglePainter(color: Colors.green),
              size: const Size(200, 200),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: CustomPaint(
              painter: TrianglePainter(color: Colors.black),
              size: const Size(200, 200),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: CustomPaint(
              painter: TrianglePainter(color: Colors.orange),
              size: const Size(200, 200),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: CustomPaint(
              painter: TrianglePainter(color: Colors.purple),
              size: const Size(200, 200),
            ),
          ),
        ],
      ),
    );
  }
}
