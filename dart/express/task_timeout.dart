// LEVEL: STD

import 'dart:async';
import 'dart:io';

Future<void> main() async {
  try {
    await Future.delayed(const Duration(seconds: 5)).timeout(const Duration(milliseconds: 100));
    print('done');
  } on TimeoutException {
    print('timed out');
  }
  exit(0);
}
