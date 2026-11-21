// LEVEL: STD

import 'dart:io';

void main() {
  print(Process.runSync('false', []).exitCode);
}
