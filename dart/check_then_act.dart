import 'dart:async';

Future<void> main() async {
  var claimed = false;
  var winners = 0;
  var checks = 0;
  final bothChecked = Completer<void>();
  Future<void> claim() async {
    var available = !claimed; // BREAK!
    // CONTROL! var available = !claimed; if (available) claimed = true;
    checks++;
    if (checks == 2) bothChecked.complete();
    await bothChecked.future;
    if (available) { claimed = true; winners++; }
  }
  await Future.wait([claim(), claim()]);
  print(winners);
}
