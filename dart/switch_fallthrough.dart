void main(List<String> args) {
  final n = int.parse(args[0]);
  String name;
  switch (n) {
    case 1:
      name = "one";
    case 2:
      name = "two";
    default:
      name = "other";
  }
  print(name);
}
