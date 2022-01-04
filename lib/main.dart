import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Jeffrey HL'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),

    ),
  ),);
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int FirstDiceNumber  = 1;
  int SecondDiceNumber = 1;
  int ThirdDiceNumber  = 1;
  int Total = 1;

  void changeDiceFace() {
    setState(() {
      FirstDiceNumber = Random().nextInt(6) + 1;
      SecondDiceNumber = Random().nextInt(6) + 1;
      ThirdDiceNumber = Random().nextInt(6) + 1;
      Total = FirstDiceNumber + SecondDiceNumber + ThirdDiceNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: <Widget>[
            Expanded(
                child: TextButton(
                child: Image.asset(
                  'images/dice$FirstDiceNumber.png',
                  height: 100,
                  width: 100,
                ),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset(
                  'images/dice$SecondDiceNumber.png',
                   height: 100,
                   width: 100,
                ),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset(
                 'images/dice$ThirdDiceNumber.png',
                  height: 100,
                  width: 100,
                ),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
            Text('$Total',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
            ),),
            Spacer(flex: 1),
        ],
      ),);
  }}
