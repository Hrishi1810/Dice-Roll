import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageStateState();
}

class _DicePageStateState extends State<DicePage> {
  var LeftImagePressed = 1;
  var RightImagePressed = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2, used as a ratio
            child: FlatButton(
              // padding: const EdgeInsets.all(8.0),
              onPressed: () {
                setState(() {
                  LeftImagePressed = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$LeftImagePressed.png'),
            ),
            // child: Image(
            //   image: AssetImage('images/dice1.png'),
            // ),
          ),
          Expanded(
            child: FlatButton(
              // padding: const EdgeInsets.all(8.0),
              onPressed: () {
                setState(() {
                  RightImagePressed = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$RightImagePressed.png'),
              // child: Image(
              //   image: AssetImage('images/dice1.png'),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
