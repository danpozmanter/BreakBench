// LEVEL: LANGUAGE

import 'dart:typed_data';

class Rec {
  Rec(this.id, this.data);
  final int id;
  final Uint8List data;
}

void main() {
  var last = Rec(0, Uint8List(0));
  for (var i = 0; i < 4000000; i++) {
    last = Rec(i, Uint8List(1016));
  }
  print(last.id);
}
