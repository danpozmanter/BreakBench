void main(List<String> args) {
  final x = int.parse(args[0]);
  final even = x & 1 == 0; // BREAK!
  // CONTROL! final even = (x & 1) == 0;
  print(even ? "even" : "odd");
}
