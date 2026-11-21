// LEVEL: LANGUAGE

class Config {
  final String name;

  Config(this.name);
}

void main() {
  final c = Config('app');
  final Config missing = null; // REJECT!
  print(c.name);
}
