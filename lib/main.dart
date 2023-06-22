import 'package:flutter/material.dart';
import 'package:learningdart/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [Color.fromARGB(255, 222, 16, 16), Color.fromARGB(255, 66, 176, 212)],
        ),
      ),
    ),
  );
}
