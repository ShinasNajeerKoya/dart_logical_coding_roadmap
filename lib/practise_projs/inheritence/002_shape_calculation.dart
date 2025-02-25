/// Create a parent class called Shape with a method calculateArea. Then create two child classes, Circle
/// and Rectangle. Override the calculateArea method in both child classes to calculate the area specific to a circle and a rectangle respectively.

// Hints:

// Use @override in both the Circle and Rectangle classes.
// Circle should have a radius, and Rectangle should have a width and height.
/// Objective: Practice how to override methods in child classes, each with its own logic to calculate the
/// area.

main() {
  Circle circleArea = Circle(radius: 20);

  Rectangle rectArea = Rectangle(length: 20, width: 10);

  rectArea.calculateRectangleArea();
  circleArea.calculateCircleArea();

  /// the inheritance basically works like - it will only allow the function to be called from parent
  /// widget and will have no idea how it is performing in the child widget
  Shape rectAreaNew = Rectangle(length: 20, width: 10);
  rectAreaNew.calculateArea();

  Shape cirAreaNew = Circle(radius: 12);
  cirAreaNew.calculateArea();
}

class Shape {
  final double? length;
  final double? width;
  final double? radius;

  Shape({this.length, this.width, this.radius});

  double calculateArea() {
    return 0;
  }

  void calculateRectangleArea() {
    print('rectangle called old');

    final rectArea = length! * width!;
    print('rect area old: $rectArea');
  }

  void calculateCircleArea() {
    print('circle called old');

    final circleArea = 3.142 * radius! * radius!;
    print('circle area old: $circleArea');
  }
}

class Rectangle extends Shape {
  final double? length;
  final double? width;

  Rectangle({required this.length, required this.width});

  @override
  void calculateRectangleArea() {
    print('rectangle called old');
    super.calculateRectangleArea();
  }

  /// as per the correction
  @override
  double calculateArea() {
    print('rectangle called new');
    final rectArea = length! * width!;
    print('rectangle called new : $rectArea');

    return rectArea;
  }
}

class Circle extends Shape {
  final double radius;

  Circle({required this.radius}) : super(radius: radius);

  @override
  void calculateCircleArea() {
    print('circle called old');
    super.calculateCircleArea();
  }

  @override
  double calculateArea() {
    final circleNewRad = 3.142 * radius * radius;
    print('circle called new : $circleNewRad');
    return circleNewRad;
  }
}
