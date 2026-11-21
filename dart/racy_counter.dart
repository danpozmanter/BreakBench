import 'dart:isolate';

Future<void> main() async {
  var count = 0;
  await Future.wait([
    Isolate.run(() {
      for (var i = 0; i < 1000000; i++) count++;
    }),
    Isolate.run(() {
      for (var i = 0; i < 1000000; i++) count++;
    }),
  ]);
  print(count);
}
