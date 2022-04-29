import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            'Dice',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      onTap: () {
                        leftDiceChange();
                      },
                      child: Image.asset('assets/dice$leftDiceNumber.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      onTap: () {
                        rightDiceChange();
                      },
                      child: Image.asset('assets/dice$rightDiceNumber.png')),
                ),
              )
            ],
          ),
        ));
  }

  void rightDiceChange() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
    });

    
  }

  void leftDiceChange() {
    setState(() {
       leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
