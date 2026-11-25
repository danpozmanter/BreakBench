import 'dart:io';

final lock = File('/tmp/bb_scratch/reader.lock');

Iterable<String> rows() sync* {
  lock.writeAsStringSync('');
  try {
    yield 'alpha';
    yield 'beta';
    yield 'gamma';
  } finally {
    lock.deleteSync();
  }
}

void main() {
  for (final line in rows()) {
    print(line);
    break; // BREAK!
  }
}
