// LEVEL: STD

import 'dart:async';

void main() {
  runZonedGuarded(() {
    throw StateError('boom');
  }, (e, s) {
    print('hook ran');
  });
}
