import 'dart:convert';
import 'dart:typed_data';

void main(List<String> args) {
  final claimed = int.parse(args[0]);
  final buf = Uint8List(64);
  buf.setRange(2, 17, ascii.encode('SECRET-KEY-0042'));
  buf.setRange(0, 2, ascii.encode('hi'));
  final payload = Uint8List.sublistView(buf, 0, 2);
  // CONTROL! if (claimed > payload.length) { print("invalid"); return; }
  final reply = payload.sublist(0, claimed);
  print(ascii.decode(reply));
}
