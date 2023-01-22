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
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                height: 600.0,
                color: Colors.purple,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: 300.0,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 300.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
