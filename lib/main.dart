import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice Roller'),
          backgroundColor: const Color.fromARGB(255, 18, 20, 180),
        ),
        body: const GradientContainer.blue(),
      ),
    ),
  );
}
