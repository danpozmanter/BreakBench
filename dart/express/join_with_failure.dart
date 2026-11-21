// LEVEL: STD

import 'dart:isolate';

Future<void> main() async {
  try {
    await Isolate.run<int>(() => throw ArgumentError('bad input'));
  } catch (e) {
    print('worker failed: $e');
  }
}
