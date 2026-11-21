import 'dart:typed_data';

void main(List<String> args) {
  final v = int.parse(args[0]);
  final b = Uint8List.fromList([v])[0];
  print(b);
}
