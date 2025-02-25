///
/// Abstract class practice --
///
/// abstract class is nothing but a set of extra rule for inherted classes, it will
/// force the child class to  override the defined method inside the parent class.
///
/// abstract class can be defined by using ';' after the method instead of '{}'.

// if we are using abstract method then it is mandatory to use the 'abstract' keyword

abstract class Animal {
  // the ';' refers to it being an abstract class and whenever the class Animal is called then
  // calling this 'makeSound()' is mandatory (as per the abstract method rule)
  void makeSound();

  // the '{}' will make this method 'non - abstract', because of this the child class can choose
  // not to implement this class and skip it if needed.
  //
  // the breathe will be available for all the child class even if it is not mentioned in the
  // child class because of inheritance property
  void breathe() {
    print('$runtimeType is breathing...');
  }
}

/// as mentioned above, the makeSound() is mandatory to pass and the breathe will be available
/// for Dog class even if it is not overridden - because of inheritance property
class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog: Woof!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat: Meow!');
  }

// The Cat class inherits the breathe() method from Animal without overriding it.
}

//

/// as mentioned above, the makeSound() is mandatory to pass and the breathe can be edited for
/// Bird class by using override keyword (because of inheritance property)

class Bird extends Animal {
  @override
  void makeSound() {
    print('Bird: Chirp!');
  }

  //

  // here the Bird class overrides the breathe() method to provide its own implementation.

  @override
  void breathe() {
    print('Bird is breathing quickly...');
  }
}

void main() {
  // Can't instantiate abstract class - rules
  // Animal animal = Animal();  // Error: Animal is abstract and cannot be instantiated.

  // but we can expect a abstract class in the return value

  Animal dog = Dog();
  final cat = Cat();
  final bird = Bird();

  dog.makeSound(); // Forced implementation // Outputs: Dog: Woof!
  dog.breathe(); // Inherited from Animal

  cat.makeSound();
  cat.breathe(); // Uses parent's implementation  // Outputs: Cat: Meow!

  bird.makeSound(); // Outputs: Bird: Chirp!
  bird.breathe(); // Uses overridden version  -- // Outputs: Bird is breathing quickly... (overridden version)
}
