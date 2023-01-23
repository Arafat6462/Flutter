import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 195, 226, 222),
          child: Column(
            children: [
              Center(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.production_quantity_limits,
                          size: 30.0,
                        ),
                      ))),
              Center(
                child: Card(
                  elevation: 20.0,
                  child: Image.network(
                      "https://cdn.theatlantic.com/thumbor/viW9N1IQLbCrJ0HMtPRvXPXShkU=/0x131:2555x1568/976x549/media/img/mt/2017/06/shutterstock_319985324/original.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
