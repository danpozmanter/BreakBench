void main(List<String> args) {
  final d = int.parse(args[0]);
  print(100 ~/ d); // CONTROL! print(d == 0 ? "cannot divide" : 100 ~/ d);
}
