void main(List<String> args) {
  final code = args[0];
  print(code == 0 ? "same" : "different"); // CONTROL! print(code == "0" ? "same" : "different");
}
