void main() {
  final xs = [1, 2, 2, 3];
  for (final x in xs) {
    if (x == 2) xs.remove(x);
  }
  print(xs.join(","));
}
