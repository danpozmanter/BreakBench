void main(List<String> args) {
  final line = args[0];
  final pos = line.indexOf(":");
  print(line.substring(pos + 1));
}
