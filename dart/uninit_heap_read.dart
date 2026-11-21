import 'dart:typed_data';

void main() {
  Uint8List? session = Uint8List(64);
  session.setRange(32, 44, "SECRET-TOKEN".codeUnits);
  session = null;
  final reply = Uint8List(64);
  print(reply.sublist(32, 44).map((b) => b.toRadixString(16).padLeft(2, "0")).join());
}
