import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
            ? Column(
                children: [
                  Question(
                      questions[_questionsIndex]['questionText'] as String),
                  // ElevatedButton(
                  //   onPressed: _answerQuestions,
                  //   child: const Text("Answer 1"),
                  // ),
                  // ElevatedButton(
                  //   onPressed: _answerQuestions,
                  //   child: const Text("Answer 2"),
                  // ),
                  // ElevatedButton(
                  //   onPressed: _answerQuestions,
                  //   child: const Text("Answer 3"),
                  // ),
                  // Answer(_answerQuestions),
                  // Answer(_answerQuestions),
                  // Answer(_answerQuestions),
                  ...(questions[_questionsIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestions, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text("You did it"),
              ),
      ),
    );
  }
}



// 2-> 32