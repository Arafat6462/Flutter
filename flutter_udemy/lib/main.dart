import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  String api = "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";
}

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
        body: const Center(
          child: Text('Hello World..!!'),
        ),
      ),
    );
  }
}
