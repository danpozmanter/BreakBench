enum Color { red, green, blue }

String name(Color c) => switch (c) {
      Color.red => 'red',
      Color.green => 'green',
      Color.blue => 'blue',
    };

void main() {
  const c = Color.green;
  print(name(7)); // BREAK!
  print(name(c));
}
