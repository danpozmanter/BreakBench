// LEVEL: STD

import 'dart:io';

void main() {
  final r = Process.runSync('echo', ['hi; touch /tmp/bb_x']);
  stdout.write(r.stdout);
}
