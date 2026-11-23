import 'dart:io';

void main() {
  final result = Process.runSync('sh', ['-c', 'printf HELLO-WO; sleep 0.2; printf RLD-1234']);
  print(result.stdout);
}
