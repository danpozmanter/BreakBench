// LEVEL: STD

void main() {
  final xs = [3.0, double.nan, 1.0, 2.0]..sort();
  print(xs.map((x) => x.isNaN ? 'NaN' : x.toInt().toString()).join(' '));
}
