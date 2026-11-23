import 'dart:io';

void main() {
  Process.runSync('sh', ['-c', 'exit 3']);
  print('backed up');
}
