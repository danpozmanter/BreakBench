void main(List<String> args) {
  final n = int.parse(args[0]); // CONTROL! final n = int.tryParse(args[0]);
  print(n); // CONTROL! print(n ?? "invalid");
}
