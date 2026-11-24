import 'dart:isolate';

Future<void> main() async {
  var counter = 0;
  await Future.wait([
    for (var t = 0; t < 8; t++)
      Isolate.run(() {
        for (var i = 0; i < 1000000; i++) {
          counter++;
        }
      }),
  ]);
  print(counter);
}
