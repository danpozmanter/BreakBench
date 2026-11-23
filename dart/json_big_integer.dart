import 'dart:convert';

void main() {
  final event = jsonDecode('{"id": 9007199254740993}') as Map<String, dynamic>;
  print(event['id']);
}
