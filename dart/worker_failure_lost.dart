import 'dart:isolate';

Future<void> main(List<String> args) async {
  final total = await Isolate.run(() => args.map(int.parse).fold<int>(0, (a, b) => a + b)); // CONTROL! final int total; try { total = await Isolate.run(() => args.map(int.parse).fold<int>(0, (a, b) => a + b)); } catch (_) { print("failed"); return; }
  print("total $total");
}
