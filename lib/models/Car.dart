import 'Car_Info.dart';

class Car {
  String CarName;
  String CarImgPath;
  final List<CarInfo> Info;

  Car(this.CarName, this.CarImgPath, this.Info);

  // Method to return all Cars
  static List<Car> fetchAll() {
    return [
      Car('Nissan Nismo', 'assets/images/car2.jpg', [
        CarInfo('Model', '2021'),
        CarInfo('Summary', 'A Legacy Car for JDM Lovers.')
      ])
    ];
  }
}
