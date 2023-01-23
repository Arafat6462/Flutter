import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.search),
          title: const Text('Title'),
          actions: const [Icon(Icons.alarm), Icon(Icons.notification_add)],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
