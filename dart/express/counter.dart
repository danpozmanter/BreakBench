// LEVEL: STD

void main() {
  final counts = <String, int>{};
  for (final w in ['a', 'b', 'a']) {
    counts.update(w, (n) => n + 1, ifAbsent: () => 1);
  }
  print('a=${counts['a']} b=${counts['b']}');
}
