import 'Car_Info.dart';

class Car {
  String Name;
  String ImgPath;
  final List<CarInfo> Info;

  Car(this.Name, this.ImgPath, this.Info);

  // Method to return all Cars
  static List<Car> fetchAll() {
    return [
      Car('Nissan Nismo', 'assets/images/car2.jpg', [
        CarInfo('Model', '2021'),
        CarInfo('Summary',
            'Powered by the thrust of high-capacity turbos developed from our GT3 racing program, the GT-R NISMO’s engine is the purest expression of passion, performance, and technology.')
      ])
    ];
  }
}
