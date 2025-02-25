main() {
  Vehicle bikeInfo = Bike(20, 6);
  Vehicle carInfo = Car(20, 6);
  carInfo.displayInfoVehicle();
  bikeInfo.displayInfoVehicle();
}

class Vehicle {
  /// constructors
  int fuelCapacity;
  int seatingCapacity;

  Vehicle(this.fuelCapacity, this.seatingCapacity);

  /// method to display the vehicle info when called

  void displayInfoVehicle() {
    print('fuel capacity : $fuelCapacity in liters');
    print('seating capacity : $seatingCapacity in numbers');
  }
}

class Car extends Vehicle {
  int fuelCapacityValue;
  int seatingCapacityValue;

  Car(this.fuelCapacityValue, this.seatingCapacityValue)
      : super(
          fuelCapacityValue,
          seatingCapacityValue,
        );

  /// when this function is called, then it will be calling the parent widget using super key and the data
  /// will be shown from parent classes displayInfoVehicle.
  @override
  void displayInfoVehicle() {
    print('car info value ----');
    super.displayInfoVehicle();
  }

  /// in the above i am creating a new function so that is why override is not needed is showing up,
  @override
  void carDisplayInfo() {
    print('car info value ----');
    super.displayInfoVehicle();
  }
}

class Bike extends Vehicle {
  int bikeFuelCapacity;
  int bikeSeatingCapacity;

  Bike(this.bikeFuelCapacity, this.bikeSeatingCapacity) : super(bikeFuelCapacity, bikeSeatingCapacity);

  /// when this function is called, then it will be calling the parent widget using super key and the data
  /// will be shown from parent classes displayInfoVehicle.
  @override
  void bikeDisplayInfo() {
    print('bike info values ---');
    super.displayInfoVehicle();
  }

  /// in the above i am creating a new function so that is why override is not needed is showing up,
  ///
  @override
  void displayInfoVehicle() {
    print('bike info values ---');
    super.displayInfoVehicle();
  }
}
