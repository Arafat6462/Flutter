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
          body: Center(
        child: Container(
          height: double.infinity, 
          width: 200.0,
          color: const Color.fromARGB(255, 192, 196, 199),
          child: const Center(
              child: Text(
            "Hello there.",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 90, 54, 48),
                fontWeight: FontWeight.bold),
          )),
        ),
      )),
    );
  }
}
