int walk(int n) {
  if (n == 0) return 0;
  return (walk(n - 1) * 31 + n) % 1000000007;
}

void main(List<String> args) {
  print(walk(int.parse(args[0]))); // CONTROL! final n = int.parse(args[0]); var acc = 0; for (var i = 1; i <= n; i++) { acc = (acc * 31 + i) % 1000000007; } print(acc);
}
