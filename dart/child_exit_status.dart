import 'dart:io';

void main() {
  Process.runSync('sh', ['-c', 'exit 3']); // CONTROL! if (Process.runSync('sh', ['-c', 'exit 3']).exitCode != 0) { print('backup failed'); return; }
  print('backed up');
}
