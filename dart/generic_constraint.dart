class Point {
  Point(this.x, this.y);
  final int x;
  final int y;
}

void main() {
  final ps = [Point(3, 4), Point(1, 2)]..sort();
  print(ps[0].x);
}
