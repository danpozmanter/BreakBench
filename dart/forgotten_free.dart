import 'dart:typed_data';

class Rec {
  final data = Uint8List(4096)..fillRange(0, 4096, 1);
}

void main(List<String> args) {
  final n = int.parse(args[0]);
  var seen = 0;
  for (var i = 0; i < n; i++) {
    final rec = Rec();
    seen += rec.data[0];
  }
  print(seen == n ? 'done' : 'lost');
}
