// LEVEL: STD

import 'dart:convert';

void main() {
  final good = jsonDecode('{"port": 8080, "debug": true}') as Map<String, dynamic>;
  var result = 'valid';
  try {
    jsonDecode('{port: 8080}');
  } on FormatException {
    result = 'invalid';
  }
  print('${good['port']} $result');
}
