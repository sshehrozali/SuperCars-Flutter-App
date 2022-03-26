import 'package:flutter/material.dart';

// Screens
import 'CarDetails/CarDetails.dart';
import 'ImageSection.dart';

// Models
import '../models/Car.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cars = Car.fetchAll(); // Get All Cars
    final car = cars.first; // Get First Car from the list

    return Scaffold(
        appBar: AppBar(
          title: Text(car.Name),
          backgroundColor: Colors.blue[900],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(car.ImgPath),
          ]..addAll(textSections(car)),
        ));
  }

  // Returns Each Car Info array as a Widget (same as we do in JS/ReactJs) :(
  List<Widget> textSections(Car car) {
    return car.Info.map(
            (information) => CarDetails(information.Title, information.Body))
        .toList();
  }
}
