import 'package:flutter/material.dart';
import 'package:learningdart/dice_roller.dart';

var beginGradient = Alignment.topCenter;
var endGradient = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginGradient,
          end: endGradient,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
