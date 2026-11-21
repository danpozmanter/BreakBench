// LEVEL: PROJECT

import 'package:collection/collection.dart';

void main() {
  final q = HeapPriorityQueue<int>()..addAll([3, 1, 2]);
  print('${q.removeFirst()} ${q.removeFirst()} ${q.removeFirst()}');
}
