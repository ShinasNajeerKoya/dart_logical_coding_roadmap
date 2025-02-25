/// Create a parent class Animal with properties like name and sound. Then create two child classes Dog and
/// Cat that extend Animal. Override a method makeSound in both child classes to print a different sound for
/// each (e.g., "Bark" for dogs and "Meow" for cats).
///

// Hints:
//
// The makeSound method should behave differently based on the child class.
// Use super to access common properties like name from the parent class.

// Objective: Practice overriding a method that provides different functionality in each subclass.

main() {
  Animal dog = Dog(name: "tommy");
  Animal cat = Cat(name: "mangu");

  dog.makeSound();
  cat.makeSound();
}

 class Animal {
  final String name;

  Animal({required this.name});

  void makeSound(){}
}

class Dog extends Animal {
  Dog({required super.name});

  @override
  void makeSound() {
    print('the dog named $name makes bow bow sound');
  }
}

class Cat extends Animal {
  Cat({required super.name});

  @override
  void makeSound() {
    print('the cat named $name makes meow meow sound');
  }
}
