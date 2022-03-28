import 'package:flutter/material.dart';

// Screens
import 'CarDetails/CarDetails.dart';
import 'ImageSection.dart';

// Models
import '../models/Car.dart';

class CarShow extends StatelessWidget {
  final int _carID;
  CarShow(this._carID);

  @override
  Widget build(BuildContext context) {
    final car = Car.fetchbyID(_carID); // Get Car by ID

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
