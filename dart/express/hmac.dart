// LEVEL: PROJECT

import 'dart:convert';

import 'package:crypto/crypto.dart';

void main() {
  final mac = Hmac(sha256, utf8.encode('key'));
  print(mac.convert(utf8.encode('The quick brown fox jumps over the lazy dog')));
}
