import 'dart:convert';

void main() {
  final user = jsonDecode('{"name": "Ada"}') as Map<String, dynamic>; // CONTROL! final user = jsonDecode('{"name": "Ada", "age": 36}') as Map<String, dynamic>;
  final age = user['age'] as int;
  print(age + 1);
}
