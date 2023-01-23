import 'package:flutter/material.dart';
import 'package:hello_app/widgets/list_item.dart';

void main() => runApp(const MyApp());

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
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  color: Colors.redAccent,
                ),
              ),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
            ],
          ),
        ),
      ),
    );
  }
}
