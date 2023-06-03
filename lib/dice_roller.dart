import 'package:flutter/material.dart';
import 'dart:math';

final generateRandomNumber = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // State setState
  var currentDiceState = 1;

  void rollDice() {
    setState(() {
      currentDiceState = generateRandomNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice_$currentDiceState.png',
          width: 200,
        ),
        const SizedBox(
          height: 50.0,
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 12, 13, 97),
            ),
          ),
          onPressed: rollDice,
          child: const Text(
            'Roll Dice',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
