// LEVEL: STD

import 'dart:io';

Future<void> main() async {
  final p = await Process.start('sleep', ['10']);
  await Future<void>.delayed(const Duration(milliseconds: 100));
  p.kill(ProcessSignal.sigkill);
  final code = await p.exitCode;
  print(code != 0 ? 'killed' : 'finished');
}
