// LEVEL: LANGUAGE

Future<void> main() async {
  final task = Future.delayed(const Duration(milliseconds: 50), () => 7);
  print('started');
  print(await task);
}
