import 'dart:async';

var balance = 100;
final gate = Completer<void>();

Future<void> charge() async {
  await gate.future;
  balance -= 30;
}

Future<void> main() async {
  final attempt = charge();
  try {
    await attempt.timeout(const Duration(milliseconds: 100));
  } on TimeoutException {
    gate.complete();
    await charge(); // BREAK!
  }
  await attempt;
  print(balance);
}
