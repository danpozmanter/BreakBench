void main(List<String> args) {
  final x = int.parse(args[0]);
  final inside = 1 < x < 3; // BREAK!
  // CONTROL! final inside = 1 < x && x < 3;
  print(inside ? "inside" : "outside");
}
