class Shape {
  int area() => 0;
  String describe() => "area ${area()}";
}

class Square extends Shape {
  int area() => 4;
}

void main() {
  print(Square().describe());
}
