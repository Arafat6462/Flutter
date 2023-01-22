import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.green,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.red,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.green,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.red,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.green,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.red,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.green,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.red,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.green,
              height: 100.0,
              width: double.infinity,
            ),
          ],
        )),
      ),
    );
  }
}
