// LEVEL: LANGUAGE

void show(double f) => print(f);

void main() {
  const n = 7;
  show(n.toDouble());
  show(n); // REJECT!
}
