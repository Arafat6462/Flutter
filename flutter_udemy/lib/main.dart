import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

void answerQuestions(){

}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
        ),
        body: Column(
          children: [
            const Text("The Question!"),
            ElevatedButton(
              onPressed: answerQuestions,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestions,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerQuestions,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}

// 2-> 016