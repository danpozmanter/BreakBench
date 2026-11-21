void main() {
  final xs = [1, 2, 3, 4, 5, 6];
  final evens = xs.where((x) => x % 2 == 0);
  final total = evens.fold(0, (a, b) => a + b);
  final count = evens.length;
  print("$total $count");
}
