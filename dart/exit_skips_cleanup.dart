import 'dart:io';

final lock = File('/tmp/bb_scratch/run.lock');

bool checkArgs(List<String> args) {
  if (args.contains('--version')) {
    print('1.0');
    exit(0); // BREAK!
    // CONTROL! return true;
  }
  return false;
}

void main(List<String> args) {
  lock.writeAsStringSync('');
  try {
    if (checkArgs(args)) return;
    print('working');
  } finally {
    lock.deleteSync();
  }
}
