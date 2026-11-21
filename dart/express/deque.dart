// LEVEL: STD

import 'dart:collection';

void main() {
  final d = ListQueue<int>();
  d.addLast(1);
  d.addFirst(0);
  d.addLast(2);
  print('${d.removeFirst()} ${d.removeLast()}');
}
