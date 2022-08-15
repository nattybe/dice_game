
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Text('Dice'),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldp = 1;
  int rdp = 1;
  void diceChander() {
                setState(
                  () {
                    rdp = (Random().nextInt(5) + 1);
                    ldp = (Random().nextInt(5) + 1);
                  },
                );
              }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/DICE$ldp.png'),
              onPressed: diceChander,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/DICE$rdp.png'),
              onPressed: diceChander,
            ),
          ),
        ],
      ),
    );
  }
}
