class Shape {
  String describe() => 'shape';
}

class Circle extends Shape {
  @override
  String descibe() => 'circle'; // CONTROL! String describe() => 'circle';
}

void main() {
  final Shape s = Circle();
  print(s.describe());
}
