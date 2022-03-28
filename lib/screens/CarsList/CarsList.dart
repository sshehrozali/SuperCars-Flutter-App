import 'package:flutter/material.dart';

// Style
import '../../style.dart';

// Screen
import '../CarShow.dart';

// Models
import '../../models/Car.dart';

class CarsList extends StatelessWidget {
  final cars = Car.fetchAll(); // Fetch Data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
        backgroundColor: Colors.blue[900],
      ),
      body: ListView(
          children: cars
              .map((car) => GestureDetector(
                    onTap: () => _onCarpress(context, car.id),
                    child: Text(car.Name),
                  ))
              .toList()),
    );
  }

  _onCarpress(BuildContext context, int CarID) {
    
  }
}
