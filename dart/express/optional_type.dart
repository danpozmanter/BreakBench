// LEVEL: LANGUAGE

void main() {
  final int? o = int.tryParse('x');
  final n = o + 1; // REJECT!
  print(o == null ? 'none' : 'some');
}
