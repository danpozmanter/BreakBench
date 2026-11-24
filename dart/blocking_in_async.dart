import 'dart:io';

Future<void> job() async {
  sleep(const Duration(milliseconds: 500)); // CONTROL! await Future.delayed(const Duration(milliseconds: 500));
}

Future<void> main() async {
  final sw = Stopwatch()..start();
  await Future.wait([job(), job()]);
  print(sw.elapsedMilliseconds < 800 ? 'concurrent' : 'serial');
}
