import 'dart:isolate';

Future<void> main() async {
  final m = <int, bool>{};
  await Future.wait([
    for (var t = 0; t < 8; t++)
      Isolate.run(() {
        for (var i = 0; i < 100000; i++) {
          m[t * 100000 + i] = true;
        }
      }),
  ]);
  print(m.length);
}
