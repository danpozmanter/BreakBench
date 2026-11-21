import 'dart:typed_data';

void main(List<String> args) {
  final n = int.parse(args[0]);
  final heads = <Uint8List>[];
  final prefixes = <String>[];
  for (var i = 0; i < n; i++) {
    final buf = Uint8List(32768)..fillRange(0, 32768, i & 255);
    heads.add(buf.sublist(0, 16));
    final big = String.fromCharCode(97 + i % 26) * 32768;
    prefixes.add(big.substring(0, 16));
  }
  print(heads.length);
}
