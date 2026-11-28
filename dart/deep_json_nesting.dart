import 'dart:convert';

void main(List<String> args) {
  final depth = int.parse(args[0]);
  // CONTROL! if (depth > 1000) { print("refused"); return; }
  jsonDecode('[' * depth + ']' * depth);
  print('parsed');
}
