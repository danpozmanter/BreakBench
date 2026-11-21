import 'dart:io';

void main() {
  final f = File('/tmp/bb_close.txt').openSync(mode: FileMode.write);
  f.writeStringSync('a');
  f.closeSync();
  f.writeStringSync('b'); // BREAK!
  print('ok');
}
