sealed class Value {}

class IntValue extends Value {
  final int n;
  IntValue(this.n);
}

class Text extends Value {
  final String text;
  Text(this.text);
}

void main() {
  final Value v = IntValue(42);
  print((v as Text).text.length);
}
