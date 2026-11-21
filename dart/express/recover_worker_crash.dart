// LEVEL: STD

import 'dart:isolate';

Future<void> main() async {
  try {
    await Isolate.run(() => throw StateError('boom'));
  } catch (_) {
    print('worker crashed');
  }
}
