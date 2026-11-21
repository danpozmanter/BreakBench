enum Color { red, green, blue }

String name(Color c) => switch (c) {
      Color.red => "red",
      Color.green => "green",
      // CONTROL! Color.blue => "blue",
    };

void main(List<String> args) {
  print(name(Color.values[int.parse(args[0])]));
}
