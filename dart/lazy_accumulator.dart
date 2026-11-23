import 'dart:io';

void main(List<String> args) {
  final count = int.parse(args[0]);
  final source = File('/dev/zero').openSync();
  var total = 0;
  for (var i = 0; i < count; i++) {
    final message = source.readSync(4096);
    total += message.length;
  }
  source.closeSync();
  print(total);
}
