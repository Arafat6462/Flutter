import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);
  // const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // color: Colors.greenAccent,
        child: Text("Answer is 1"),
        onPressed: selectHandler,

        style: ElevatedButton.styleFrom(
          // primary: Colors.purple,
          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: TextStyle(
            fontSize: 24,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
