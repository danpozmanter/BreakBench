class Point {
  Point(this.x, this.y);
  final int x;
  final int y;
}

void main() {
  final ps = [Point(3, 4), Point(1, 2)]..sort(); // CONTROL! final ps = [Point(3, 4), Point(1, 2)]..sort((a, b) => a.x.compareTo(b.x));
  print(ps[0].x);
}
