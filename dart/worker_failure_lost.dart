import 'dart:isolate';

Future<void> main(List<String> args) async {
  final total = await Isolate.run(() => args.map(int.parse).fold<int>(0, (a, b) => a + b));
  print("total $total");
}
