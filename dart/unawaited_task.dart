Future<void> save(List<int> store) async {
  await Future.delayed(const Duration(milliseconds: 50));
  store.add(1);
}

Future<void> main() async {
  final store = <int>[];
  save(store); // CONTROL! await save(store);
  print(store.length);
}
