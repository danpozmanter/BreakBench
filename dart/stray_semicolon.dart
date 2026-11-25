String size(int n) {
  var label = "small";
  if (n > 5); // CONTROL! if (n > 5)
  {
    label = "big";
  }
  return label;
}

void main(List<String> args) {
  print(size(int.parse(args[0])));
  print(size(int.parse(args[1])));
}
