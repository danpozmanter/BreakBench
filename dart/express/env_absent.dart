// LEVEL: STD

import 'dart:io';

void main() {
  print(Platform.environment['BB_UNSET'] == null ? 'absent' : 'present');
}
