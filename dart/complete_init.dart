class Config {
  final int timeout;
  final int retries;

  Config({required this.timeout, required this.retries});
}

void main() {
  final c = Config(timeout: 5, retries: 3);
  final partial = Config(timeout: 5); // BREAK!
  print('${c.timeout} ${c.retries}');
}
