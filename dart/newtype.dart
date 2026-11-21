extension type Meters(double v) {
  Meters operator +(Meters o) => Meters(v + o.v);
}

extension type Seconds(double v) {}

void main() {
  final total = Meters(2) + Meters(3);
  final wrong = Meters(2) + Seconds(3); // BREAK!
  print(total.v);
}
