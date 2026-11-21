void main(List<String> args) {
  final ids = [10, 20, 30];
  final id = args[0];
  print(ids.contains(id) ? "found" : "missing"); // CONTROL! print(ids.contains(int.parse(id)) ? "found" : "missing");
}
