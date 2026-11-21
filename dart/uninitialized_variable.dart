void main(List<String> args) {
  final n = int.parse(args[0]);
  int x;
  if (n > 5) x = 10;
  print(x); // BREAK!
  print(n);
}
