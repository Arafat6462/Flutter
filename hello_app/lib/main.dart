import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            // child: ElevatedButton(
            child: SizedBox(
              width: 120.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () {
                  print("Button clicked.");
                },
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text("Click me"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
