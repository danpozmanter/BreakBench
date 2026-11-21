// LEVEL: STD

import 'dart:io';

void main() {
  final dir = Directory.systemTemp.createTempSync('bb');
  final file = File('${dir.path}/note.txt')..writeAsStringSync('ok');
  print(file.readAsStringSync());
  dir.deleteSync(recursive: true);
}
