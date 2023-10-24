import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(context) {
    return const SetImage();
  }
}

class SetImage extends StatefulWidget {
  const SetImage({super.key});

  @override
  State<SetImage> createState() {
    return _SetImageState();
  }
}

class _SetImageState extends State<SetImage> {
  
  var diceRoll = 1;

  void rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assests/images/dice-$diceRoll.png', width: 150),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, foregroundColor: Colors.white),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
