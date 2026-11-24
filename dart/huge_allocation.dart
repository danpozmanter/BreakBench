import 'dart:typed_data';

void main(List<String> args) {
  final n = int.parse(args[0]);
  // CONTROL! if (n > (1 << 30)) { print("too large"); return; }
  final buf = Uint8List(n);
  buf[n - 1] = 1;
  print(buf.length);
}
