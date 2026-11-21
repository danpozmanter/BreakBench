void main(List<String> args) {
  final s = "ab" + args[0];
  print(s == "abc" ? "equal" : "different");
}
