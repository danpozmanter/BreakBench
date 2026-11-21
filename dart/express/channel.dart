// LEVEL: STD

import 'dart:isolate';

void worker(SendPort out) {
  for (var v = 1; v <= 3; v++) {
    out.send(v);
  }
}

Future<void> main() async {
  final port = ReceivePort();
  await Isolate.spawn(worker, port.sendPort);
  final got = await port.take(3).toList();
  port.close();
  print(got.join(' '));
}
