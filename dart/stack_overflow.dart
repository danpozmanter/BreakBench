int walk(int n) {
  if (n == 0) return 0;
  return (walk(n - 1) * 31 + n) % 1000000007;
}

void main(List<String> args) {
  print(walk(int.parse(args[0])));
}
