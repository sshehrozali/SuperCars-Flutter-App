import 'Car_Info.dart';

class Car {
  final int id;
  String Name;
  String ImgPath;
  final List<CarInfo> Info;

  Car(this.id, this.Name, this.ImgPath, this.Info);

  // Method to return Car by ID
  static Car fetchbyID(int CarID) {
    // Fetch all Cars first, iterate over all Cars
    // Search for car matching the ID passed, if Found return that item
    List<Car> cars = Car.fetchAll();
    for (var i = 0; i < cars.length; i++) {
      if (cars[i].id == CarID) {
        return cars[i]; // If found that ID, return that Car
      } else {
        print("Car Not Found!");
      }
    }
  }

  // Method to return all Cars
  static List<Car> fetchAll() {
    return [
      Car(1, 'McLaren', 'assets/images/car1.jpg', [
        CarInfo('Model', '2020'),
        CarInfo('Summary',
            'McLaren Racing Limited is a British motor racing team based at the McLaren Technology Centre in Woking, Surrey, England. McLaren is best known as a Formula One constructor, the second oldest active team, and the second most successful Formula One team after Ferrari, having won 183 races.')
      ]),
      Car(2, 'Nissan Nismo', 'assets/images/car2.jpg', [
        CarInfo('Model', '2021'),
        CarInfo('Summary',
            'Powered by the thrust of high-capacity turbos developed from our GT3 racing program, the GT-R NISMO’s engine is the purest expression of passion, performance, and technology.')
      ]),
      Car(3, 'LaFerrari', 'assets/images/car3.jpg', [
        CarInfo('Model', '2022'),
        CarInfo('Summary',
            'Ferrari unique core values have been raised to a whole new level in the car launched to mark the 70th anniversary of the foundation of the company.Designed for Ferrari most passionate clients, the LaFerrari Aperta is the new limited-edition')
      ]),
    ];
  }
}
