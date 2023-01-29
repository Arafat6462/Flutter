import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  var questionsIndex = 0;

  void answerQuestions() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });
    print("answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s your favourite color?",
      "What\'s your favourite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(questionsIndex)),
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

// 2-> 20