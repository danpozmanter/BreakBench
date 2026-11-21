enum Color { red, green, blue }

void main(List<String> args) {
  print('before');
  print(Color.values[int.parse(args[0])]);
}
