void main() {
  final seen = <List<int>>{};
  final key = [1, 2];
  seen.add(key);
  key[0] = 9;
  for (final e in seen) {
    print(seen.contains(e) ? "found" : "lost");
  }
}
