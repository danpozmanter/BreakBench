List<String> addItem(String item, [List<String> cart = const []]) { // CONTROL! List<String> addItem(String item, [List<String>? cart]) {
  cart.add(item); // CONTROL! cart ??= <String>[]; cart.add(item);
  return cart;
}

void main() {
  addItem("x");
  final b = addItem("y");
  print(b.length);
}
