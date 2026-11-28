import 'dart:convert';

void main(List<String> args) {
  final counts = List<int>.filled(256, 0);
  for (final b in utf8.encode(args[0])) {
    counts[b]++;
  }
  print(counts.sublist(128).reduce((a, b) => a + b));
}
