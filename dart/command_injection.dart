import 'dart:io';

void main(List<String> args) {
  final pwned = File("/tmp/bb_pwned");
  if (pwned.existsSync()) pwned.deleteSync();
  Process.runSync("echo", [args[0]]);
  print(pwned.existsSync() ? "injected" : "safe");
}
