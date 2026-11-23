import 'dart:typed_data';

class Node {
  final data = Uint8List(4096)..fillRange(0, 4096, 1);
  Node? other;
}

void main(List<String> args) {
  final n = int.parse(args[0]);
  for (var i = 0; i < n; i++) {
    final parent = Node();
    final child = Node();
    parent.other = child;
    child.other = parent;
  }
  print('done');
}
