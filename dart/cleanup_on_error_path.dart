import 'dart:io';

final scratch = File('/tmp/bb_scratch/export.csv');

void export(List<String> rows) {
  scratch.writeAsStringSync('qty\n');
  for (final row in rows) {
    final qty = int.parse(row); // BREAK!
    // CONTROL! final qty = int.tryParse(row) ?? (() { scratch.deleteSync(); throw FormatException('invalid row $row'); })();
    scratch.writeAsStringSync('$qty\n', mode: FileMode.append);
  }
  scratch.deleteSync();
}

void main() {
  try {
    export(['3', 'x', '5']);
  } on FormatException {
    print('export failed');
  }
}
