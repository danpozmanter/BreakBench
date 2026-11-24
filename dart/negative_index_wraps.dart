void main(List<String> args) {
  final readings = [10, 20, 30];
  final i = int.parse(args[0]);
  print(readings[i] - readings[i - 1]); // CONTROL! print(i > 0 ? readings[i] - readings[i - 1] : "no previous");
}
