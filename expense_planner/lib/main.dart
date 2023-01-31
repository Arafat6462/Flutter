import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App 1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App 2"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Card(
                child: Text('CHART'),
                elevation: 5,
                shadowColor: Color.fromARGB(255, 255, 64, 230),
                color: Color.fromARGB(255, 240, 224, 214),
              ),
            ),
            Container(
              width: 70,
              height: 50,
              child: Card(
                child: Text('CHART'),
                elevation: 5,
                shadowColor: Color.fromARGB(255, 255, 64, 230),
                color: Color.fromARGB(255, 214, 240, 216),
              ),
            ),
          ],
        ));
  }
}
//04 -> 004
