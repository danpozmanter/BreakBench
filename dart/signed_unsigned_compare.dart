void main(List<String> args) {
  final xs = [1, 2, 3];
  final i = int.parse(args[0]);
  print(i < xs.length ? "less" : "not less");
}
