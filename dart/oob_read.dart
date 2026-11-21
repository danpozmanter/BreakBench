class Frame {
  final buf = [1, 2, 3, 4];
  final secret = 42;
}

void main(List<String> args) {
  final f = Frame();
  print(f.buf[int.parse(args[0])]);
}
