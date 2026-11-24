void main(List<String> args) {
  final x = double.parse(args[0]);
  final v = x.toInt(); // CONTROL! final v = BigInt.from(x);
  print(v);
}
