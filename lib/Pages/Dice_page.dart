import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({Key? key});
  @override
  State<DicePage> createState() => _DicePageState();
}

int x = Random().nextInt(6) + 1;
int y = Random().nextInt(6) + 1;

class _DicePageState extends State<DicePage> {
  void changeDiceFace() {
    setState(() {
      x = Random().nextInt(6) + 1;
      y = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: changeDiceFace,
              child: Image.asset(
                'images/dice$x.png',
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: changeDiceFace,
              child: Image.asset(
                'images/dice$y.png',
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
