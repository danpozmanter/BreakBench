import 'dart:async';

Future<void> main() async {
  final woken = Completer<void>();
  woken.complete();
  final worker = Future(() async {
    await woken.future;
    print('done');
  });
  await worker;
}
