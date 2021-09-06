import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.deepOrange,
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
  //Declarations
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;

  //Functions
  void diceRandomizer() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1; //1 - 6
      leftDiceNumber = Random().nextInt(6) + 1; //1 - 6
    });
  }

  @override
  Widget build(BuildContext context) {
    //Declarations
    return Center(
      child: Row(
        children: <Widget>[
          //Left dice button
          Expanded(
            child: FlatButton(
              onPressed: () {
                //Tells the app what has been changed
                diceRandomizer();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          //Right dice button
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceRandomizer();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
