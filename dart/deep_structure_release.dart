class Node {
  final int value;
  final Node? next;
  Node(this.value, this.next);
}

int buildAndRelease(int n) {
  Node? head;
  for (var i = 0; i < n; i++) {
    head = Node(i, head);
  }
  return head?.value ?? 0;
}

void main(List<String> args) {
  buildAndRelease(int.parse(args[0]));
  print("done");
}
