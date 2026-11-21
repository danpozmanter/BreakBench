class Item {
  int val;
  Item(this.val);
}

void main() {
  final v = [Item(1)];
  final r = v[0];
  for (var i = 0; i < 1000; i++) {
    v.add(Item(i));
  }
  final w = [Item(7)];
  r.val = 99;
  print(w[0].val);
}
