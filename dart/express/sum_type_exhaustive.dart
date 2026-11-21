// LEVEL: LANGUAGE

sealed class Shape {}

class Circle extends Shape {
  Circle(this.r);
  final double r;
}

class Square extends Shape {
  Square(this.side);
  final double side;
}

String name(Shape s) => switch (s) {
      Circle() => 'circle',
      Square() => 'square',
    };

String bad(Shape s) => switch (s) { Circle() => 'circle' }; // REJECT!

void main() {
  print(name(Circle(1)));
}
