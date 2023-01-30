import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({super.key});
  final VoidCallback resetQuiz;
  const Result(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            "You did it",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text("Restart"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 201, 120, 15))),
          )
        ],
      ),
    );
  }
}
