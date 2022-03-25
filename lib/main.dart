import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text(
              'Lets Play with Layouts!',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Text("Red"),
                decoration: BoxDecoration(color: Colors.red),
              ),
              Container(
                child: Text("Green"),
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                child: Text("Blue"),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ],
          )),
    );
  }
}
