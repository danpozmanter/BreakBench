import 'dart:io';

void main() {
  File('/dev/full').writeAsStringSync('data\n');
  print('saved');
}
