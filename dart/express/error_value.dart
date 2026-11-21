// LEVEL: LANGUAGE

(int?, FormatException?) parsePort(String s) {
  final p = int.tryParse(s);
  return p == null ? (null, FormatException('not a number')) : (p, null);
}

void main() {
  final (p, err) = parsePort('x');
  print(err != null ? 'error' : '$p');
}
