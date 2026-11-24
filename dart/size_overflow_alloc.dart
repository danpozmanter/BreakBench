import 'dart:typed_data';

void main(List<String> args) {
  final count = int.parse(args[0]);
  // CONTROL! if (count > (1 << 27)) { print('too large'); return; }
  final size = count * 8;
  final records = Uint8List(size);
  records[8] = 99;
  print('stored');
}
