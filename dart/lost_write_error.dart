import 'dart:io';

void main() {
  File('/dev/full').writeAsStringSync('data\n'); // CONTROL! try { File('/dev/full').writeAsStringSync('data\n'); print('saved'); } on FileSystemException { print('failed'); }
  print('saved'); // BREAK!
}
