int count(List<int> xs) {
  xs.sort(); // CONTROL! xs = [...xs]..sort();
  return xs.length;
}

void main() {
  final items = [3, 1, 2];
  count(items);
  print(items[0]);
}
