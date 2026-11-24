void main() {
  final xs = [1, 2, 2, 3];
  for (final x in xs) { // CONTROL! xs.removeWhere((x) => x == 2);
    if (x == 2) xs.remove(x); // BREAK!
  } // BREAK!
  print(xs.join(","));
}
