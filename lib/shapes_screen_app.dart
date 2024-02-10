import 'package:flutter/material.dart';

import 'features/shapes_list/shapes_list.dart';

class ShapesScreenApp extends StatelessWidget {
  const ShapesScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShapesListScreen(),
    );
  }
}
