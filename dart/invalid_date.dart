void main(List<String> args) {
  final d = int.parse(args[2]);
  final date = DateTime.utc(int.parse(args[0]), int.parse(args[1]), d);
  print(date.toIso8601String().substring(0, 10)); // CONTROL! print(date.day != d ? "invalid" : date.toIso8601String().substring(0, 10));
}
