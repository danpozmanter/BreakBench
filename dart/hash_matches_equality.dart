class Point {
  Point(this.x, this.y, this.label);
  final int x;
  final int y;
  final String label;

  @override
  bool operator ==(Object o) => o is Point && o.x == x && o.y == y;
}

void main() {
  print({Point(1, 2, 'a'), Point(1, 2, 'b')}.length);
}
