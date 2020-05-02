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
  int leftDiceNo = 1;
  int rightDiceNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNo.png'),
              onPressed: upDate,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: upDate,
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }

  void upDate() {
    setState(() {
      rightDiceNo = Random().nextInt(5) + 1;
      leftDiceNo = Random().nextInt(5) + 1;
    });
  }
}

//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                print('Left Btn pressed');
//              },
//              child: Image.asset('images/dice1.png'),
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                print('Right Btn pressed');
//              },
//              child: Image.asset('images/dice2.png'),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
