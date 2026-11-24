class Frame {
  final buf = List.filled(4, 0);
  var guard = 7;
}

void main(List<String> args) {
  final f = Frame();
  f.buf[int.parse(args[0])] = 99; // CONTROL! final i = int.parse(args[0]); if (i >= 0 && i < f.buf.length) f.buf[i] = 99;
  print(f.guard);
}
