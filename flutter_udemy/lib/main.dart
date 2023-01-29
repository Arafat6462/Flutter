import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  var _questionsIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
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
            Question(questions.elementAt(_questionsIndex)),
            ElevatedButton(
              onPressed: _answerQuestions,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _answerQuestions,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestions,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}



// 2-> 23