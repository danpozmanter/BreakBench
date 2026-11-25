import 'dart:io';

void main() {
  final String text;
  try {
    text = File('/nonexistent/bb.conf').readAsStringSync();
  } on FileSystemException catch (e) {
    stderr.writeln('config missing: ${e.message}');
    return; // BREAK!
    // CONTROL! rethrow;
  }
  print(text.length);
}
