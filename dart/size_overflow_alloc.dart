import 'dart:typed_data';

void main(List<String> args) {
  final count = int.parse(args[0]);
  final size = count * 8;
  final records = Uint8List(size);
  records[8] = 99;
  print('stored');
}
