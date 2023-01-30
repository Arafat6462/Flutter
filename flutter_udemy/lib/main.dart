import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  final questions = const [
    {
      'questionText': "What\'s your favourite color?",
      'answers': ['Balck', 'Blue', 'Red', 'Green']
    },
    {
      'questionText': "What\'s your favourite animal?",
      'answers': ['Rabbit', 'Lion', 'Tiger', 'Cat']
    },
    {
      'questionText': "What\'s your favourite Fruits?",
      'answers': ['Mango', 'Banana', 'Orange', 'Apple']
    },
  ];

  void _answerQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print("Option choosen.");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("First App"),
          ),
          body: _questionsIndex < questions.length
              ? Quiz(
                  answerQuestion: _answerQuestions,
                  questionIndex: _questionsIndex,
                  questions: questions,
                )
              : Result()),
    );
  }
}



// 2-> 32