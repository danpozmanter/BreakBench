void main(List<String> args) {
  var x = int.parse(args[0]);
  var label = "not one";
  if (x = 1) label = "one"; // BREAK!
  // CONTROL! if (x == 1) label = "one";
  x += 0;
  print(label);
}
