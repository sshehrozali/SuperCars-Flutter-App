import 'package:flutter/material.dart';

// Components
import 'screens/TextSection.dart';
import 'screens/ImageSection.dart';

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
            centerTitle: true,
            backgroundColor: Colors.purple,
            title: const Text(
              'Car Wallpapers',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner("assets/images/car1.jpg"),
              ImageBanner("assets/images/car2.jpg"),
              ImageBanner("assets/images/car3.jpg"),
            ],
          )),
    );
  }
}
