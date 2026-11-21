// LEVEL: STD

import 'dart:typed_data';

void main(List<String> args) {
  final n = int.parse(args[0]);
  try {
    Uint8List(n);
    print('allocated');
  } on OutOfMemoryError {
    print('allocation failed');
  } on RangeError {
    print('allocation failed');
  }
}
