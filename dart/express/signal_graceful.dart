// LEVEL: STD

import 'dart:async';
import 'dart:io';

Future<void> main() async {
  final done = Completer<void>();
  final sub = ProcessSignal.sigterm.watch().listen((_) => done.complete());
  Process.killPid(pid, ProcessSignal.sigterm);
  await done.future;
  await sub.cancel();
  print('cleaned up');
}
