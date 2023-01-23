import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/flow.jpg",
                width: 350.0,
              ),
              Image.asset(
                "assets/images/pic.png",
                width: 350.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
