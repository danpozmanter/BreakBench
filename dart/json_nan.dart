import 'dart:convert';

void main(List<String> args) {
  final count = int.parse(args[0]);
  final mean = 0.0 / count;
  print(jsonEncode({'mean': mean})); // CONTROL! try { print(jsonEncode({'mean': mean})); } on JsonUnsupportedObjectError { print('refused'); }
}
