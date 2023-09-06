import 'package:flutter/material.dart';
import 'package:dicee/Pages/Dice_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color.fromARGB(255, 134, 168, 207),
        ),
        body: SafeArea(
          child: DicePage(),
        ),
      ),
    );
  }
}
