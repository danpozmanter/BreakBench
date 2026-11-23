import 'dart:isolate';

void worker(SendPort reply) {
  final inbox = ReceivePort();
  reply.send(inbox.sendPort);
  var received = <int>[];
  inbox.listen((message) {
    if (message == 'go') {
      print(received[0]);
      inbox.close();
    } else {
      received = message as List<int>;
    }
  });
}

Future<void> main() async {
  final reply = ReceivePort();
  final exit = ReceivePort();
  await Isolate.spawn(worker, reply.sendPort, onExit: exit.sendPort);
  final toWorker = await reply.first as SendPort;
  final list = [1, 2, 3];
  toWorker.send(list);
  list[0] = 99;
  toWorker.send('go');
  await exit.first;
}
