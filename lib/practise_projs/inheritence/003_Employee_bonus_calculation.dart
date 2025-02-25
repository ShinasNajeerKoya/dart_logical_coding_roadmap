/// Create a parent class called Employee with common properties like name, salary, and a method called

/// calculateBonus. Then create two child classes Manager and Developer that extend Employee.
/// Override the calculateBonus method to calculate a different bonus for managers and developers.

// Hints:
//
// Managers may have a higher bonus percentage than developers.
// Use super to access common properties like salary from the parent class.

// Objective: Understand how inheritance works in practical use cases like calculating bonuses for different employee types.

main() {
  Employee managerBonus = Manager(managerName: 'shinas', managerSalary: 1000);
  print('managerBonus: ${managerBonus.calculateBonus()}');
  managerBonus.calculateBonus();

  Employee devBonus = Developer(name: 'koya', salary: 1000);
  print('devBonus: ${devBonus.calculateBonus()}');
  devBonus.calculateBonus();
}

class Employee {
  final String name;
  final double salary;

  Employee({required this.name, required this.salary});

  double calculateBonus() {
    return 0;
  }
}

class Manager extends Employee {
  final String managerName;
  final double managerSalary;

  Manager({required this.managerName, required this.managerSalary})
      : super(name: managerName, salary: managerSalary);

  @override
  double calculateBonus() {
    final calculatedBonus = managerSalary * 5.5;
    return calculatedBonus;
  }
}

class Developer extends Employee {
  // final String developerName;
  // final double developerSalary;

  Developer({
    // required this.developerName,
    // required this.developerSalary,
    required super.name,
    required super.salary,
  });

  @override
  double calculateBonus() {
    final devBonus = salary * 3;

    return devBonus;
  }
}
