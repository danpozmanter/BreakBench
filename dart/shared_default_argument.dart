List<String> addItem(String item, [List<String> cart = const []]) {
  cart.add(item);
  return cart;
}

void main() {
  addItem("x");
  final b = addItem("y");
  print(b.length);
}
