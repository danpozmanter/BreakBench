class Config {
  String color = "blue";
}

void main() {
  final cfg = Config();
  cfg.colour = "red"; // BREAK!
  print(cfg.color);
}
