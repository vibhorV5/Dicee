import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = 1;
  int rightDiceButton = 1;

  void diceRandomize() {
    setState(() {
      leftDiceButton = Random().nextInt(6) + 1;
      rightDiceButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  diceRandomize();
                  print('leftDice = $leftDiceButton');
                },
                child: Image.asset('images/dice$leftDiceButton.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  diceRandomize();
                  print('rightDice = $rightDiceButton');
                },
                child: Image.asset('images/dice$rightDiceButton.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
