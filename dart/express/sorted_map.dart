// LEVEL: STD

import 'dart:collection';

void main() {
  final m = SplayTreeMap<String, int>.from({'c': 1, 'a': 2, 'b': 3});
  print(m.keys.join(' '));
}
