// LEVEL: STD

import 'dart:isolate';

void spin(Object? _) {
  while (true) {}
}

Future<void> main() async {
  final exit = ReceivePort();
  final isolate = await Isolate.spawn(spin, null, onExit: exit.sendPort);
  await Future.delayed(const Duration(milliseconds: 20));
  isolate.kill(priority: Isolate.immediate);
  await exit.first;
  print('stopped');
}
