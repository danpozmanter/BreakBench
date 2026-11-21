import 'dart:typed_data';

class Node {
  Node? next;
  final payload = Uint8List(2048);
}

class Obj {
  final payload = Uint8List(2048);
  int Function()? callback;
}

void main(List<String> args) {
  final n = int.parse(args[0]);
  var total = 0;
  for (var i = 0; i < n; i++) {
    final a = Node();
    final b = Node();
    a.next = b;
    b.next = a;
    final o = Obj();
    o.callback = () => o.payload.length;
    total += o.callback!();
  }
  print(total < 0 ? "unreachable" : "done");
}
