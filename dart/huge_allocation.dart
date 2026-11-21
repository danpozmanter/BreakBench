import 'dart:typed_data';

void main(List<String> args) {
  final n = int.parse(args[0]);
  final buf = Uint8List(n);
  buf[n - 1] = 1;
  print(buf.length);
}
