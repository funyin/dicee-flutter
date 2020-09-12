import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int fistDiceNumber = 1;
  int secondDiceNumber = 1;

  void rollDice() {
    setState(() {
      fistDiceNumber = Random.secure().nextInt(6) + 1;
      secondDiceNumber = Random.secure().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: rollDice,
              child: Image.asset('images/dice$fistDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: rollDice,
              child: Image.asset('images/dice$secondDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
