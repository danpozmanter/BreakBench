// LEVEL: STD

import 'dart:math';

void main() {
  final rng = Random.secure();
  print(List.generate(16, (_) => rng.nextInt(256).toRadixString(16).padLeft(2, '0')).join());
}
