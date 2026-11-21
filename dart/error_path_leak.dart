import 'dart:typed_data';

void process(String request, int id) {
  final buf = Uint8List(4096);
  final text = "$request#$id".codeUnits;
  buf.setRange(0, text.length, text);
  if (buf[0] != "{".codeUnitAt(0)) throw ArgumentError("invalid request");
}

void main(List<String> args) {
  final n = int.parse(args[0]);
  var failures = 0;
  for (var i = 0; i < n; i++) {
    try {
      process("not json", i);
    } on ArgumentError {
      failures++;
    }
  }
  print(failures == n ? "done" : "unexpected");
}
