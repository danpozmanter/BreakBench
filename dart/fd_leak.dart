import 'dart:io';

void main(List<String> args) {
  final n = int.parse(args[0]);
  File("/tmp/bb_fd.txt").writeAsStringSync("x");
  for (var i = 0; i < n; i++) {
    final f = File("/tmp/bb_fd.txt").openSync();
    f.readByteSync();
  }
  print("done");
}
