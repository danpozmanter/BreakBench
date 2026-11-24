void main(List<String> args) {
  const name = 'a👍b';
  final n = int.parse(args[0]);
  print(name.substring(0, n)); // CONTROL! print(String.fromCharCodes(name.runes.take(n)));
}
