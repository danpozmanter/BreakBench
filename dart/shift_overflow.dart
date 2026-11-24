void main(List<String> args) {
  final s = int.parse(args[0]);
  print(1 << s); // CONTROL! print(BigInt.one << s);
}
