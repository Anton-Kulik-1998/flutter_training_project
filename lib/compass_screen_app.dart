import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

class CompassScreenApp extends StatefulWidget {
  const CompassScreenApp({super.key});

  @override
  State<CompassScreenApp> createState() => _CompassScreenAppState();
}

class _CompassScreenAppState extends State<CompassScreenApp> {
  double? heading = 0;

  @override
  void initState() {
    FlutterCompass.events!.listen((event) {
      setState(() {
        heading = event.heading;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 169, 169, 169),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 62, 62, 62),
          centerTitle: true,
          title: const Text("Compass App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${heading!.ceil()}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/compass.png"),
                  Transform.rotate(
                    angle: ((heading ?? 0) * (pi / 180) * -1),
                    child: Image.asset(
                      "assets/cadrant.png",
                      scale: 1.1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
