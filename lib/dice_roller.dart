import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 2;
  void rollDice() {
    setState(() {
      diceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            //padding: const EdgeInsets.all(7),
            backgroundColor: const Color.fromARGB(255, 99, 229, 19),
            foregroundColor: const Color.fromARGB(255, 33, 31, 31),
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
