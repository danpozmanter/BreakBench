void main() {
  final fs = <int Function()>[];
  for (var i = 0; i < 3; i++) {
    fs.add(() => i);
  }
  print(fs.map((f) => f()).join(","));
}
