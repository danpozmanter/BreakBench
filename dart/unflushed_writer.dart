import 'dart:io';

void main() {
  final report = File('/tmp/bb_report.txt').openWrite();
  report.writeln('total=42');
}
