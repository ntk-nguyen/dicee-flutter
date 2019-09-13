import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
  static int highestDiceValue = 6;
  int leftDiceNumber = Random().nextInt(highestDiceValue) + 1;
  int rightDiceNumber = Random().nextInt(highestDiceValue) + 1;
  void changeDiceNumber(){
    setState(() {
      leftDiceNumber = Random().nextInt(highestDiceValue) + 1;
      rightDiceNumber = Random().nextInt(highestDiceValue) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDiceNumber();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDiceNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )
          ),
        ],
      ),
    );
  }
}
