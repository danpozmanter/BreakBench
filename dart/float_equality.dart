void main(List<String> args) {
  final x = double.parse(args[0]);
  final y = double.parse(args[1]);
  final a = x + y;
  print(a == 0.3 ? "equal" : "not equal"); // CONTROL! print((a - 0.3).abs() < 1e-9 ? "equal" : "not equal");
}
