import 'dart:typed_data';

void main(List<String> args) {
  final v = int.parse(args[0]);
  // CONTROL! if (v < 0 || v > 255) { print("out of range"); return; }
  final b = Uint8List.fromList([v])[0];
  print(b);
}
