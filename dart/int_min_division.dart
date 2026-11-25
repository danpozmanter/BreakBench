void main(List<String> args) {
  final a = int.parse(args[0]);
  final b = int.parse(args[1]);
  print(a ~/ b); // CONTROL! print(BigInt.from(a) ~/ BigInt.from(b));
}
