void main(List<String> args) {
  final n = int.parse(args[0]);
  print(n + 1); // CONTROL! print(BigInt.from(n) + BigInt.one);
}
