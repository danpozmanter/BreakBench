// LEVEL: STD

import 'dart:convert';

void main() {
  try {
    utf8.decode([0x61, 0xFF]);
    print('valid');
  } on FormatException {
    print('invalid');
  }
}
