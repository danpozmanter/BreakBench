import 'dart:io';

void main() {
  Directory('/tmp/bb_files').createSync(recursive: true);
  File('/tmp/bb_files/report.txt').writeAsStringSync('secret\n');

  const name = 'report.txt\u0000.png';
  // CONTROL! if (name.contains('\u0000')) { print('rejected'); return; }
  if (!name.endsWith('.png')) {
    print('rejected');
    return;
  }
  try {
    stdout.write(File('/tmp/bb_files/$name').readAsStringSync());
  } on FileSystemException {
    print('rejected');
  }
}
