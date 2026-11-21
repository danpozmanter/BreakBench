// LEVEL: STD

import 'dart:typed_data';

void main() {
  final buf = BytesBuilder();
  for (var i = 0; i < 100000; i++) {
    buf.addByte(i & 0xFF);
  }
  print(buf.length);
}
