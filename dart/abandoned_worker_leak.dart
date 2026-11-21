Future<List<int>> answer(int seed) async => List.filled(8192, seed);

Future<void> main(List<String> args) async {
  final rounds = int.parse(args[0]);
  for (var i = 0; i < rounds; i++) {
    final first = await Future.any([answer(i), answer(i + 1)]);
    if (first.length != 8192) print("short");
  }
  print("done");
}
