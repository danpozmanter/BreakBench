// LEVEL: STD

void main() {
  final a = double.parse('NaN');
  final b = double.parse('NaN');
  final s = {a};
  print(s.contains(b) ? 'found' : 'missing');
}
