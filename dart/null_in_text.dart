String? findName(int id) => id == 1 ? "alice" : null;

void main(List<String> args) {
  final name = findName(int.parse(args[0]));
  print("hello, $name");
}
