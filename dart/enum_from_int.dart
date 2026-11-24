enum Color { red, green, blue }

void main(List<String> args) {
  print('before');
  print(Color.values[int.parse(args[0])]); // CONTROL! final n = int.parse(args[0]); print(n >= 0 && n < Color.values.length ? Color.values[n] : 'invalid');
}
