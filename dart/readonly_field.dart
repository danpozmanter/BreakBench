class Config {
  Config(this.port);
  final int port;
}

void main() {
  final c = Config(8080);
  c.port = 1; // BREAK!
  print(c.port);
}
