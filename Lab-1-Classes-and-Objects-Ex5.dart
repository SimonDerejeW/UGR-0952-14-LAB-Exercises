abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
}

class Square extends Shape {
  final double sideLength;

  Square(this.sideLength);

  @override
  double calculateArea() {
    return sideLength * sideLength;
  }
}
