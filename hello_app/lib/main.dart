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
        body: Row(
          children: [
            Container(
              color: Colors.red,
              height: 200.0,
              width: 100.0,
            ),
            Container(
              color: Colors.blue,
              height: 200.0,
              width: 100.0,
            ),
            Container(
              color: Colors.purple,
              height: 200.0,
              width: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
