import 'package:flutter/material.dart';

// Screens
import 'CarDetails/CarDetails.dart';
import 'ImageSection.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Car Details"),
          backgroundColor: Colors.blue[900],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/images/car2.jpg"),
            CarDetails("Nissan GTR Skyline", "Model: 2021",
                "Fastest JDM Car in the World, Not Fatest than Supra."),
          ],
        ));
  }
}
