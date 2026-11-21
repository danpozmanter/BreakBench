// LEVEL: PROJECT

import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

String two(int n) => n.toString().padLeft(2, '0');

void main() {
  tzdata.initializeTimeZones();
  final paris = tz.getLocation('Europe/Paris');
  final t = tz.TZDateTime.from(DateTime.utc(2026, 3, 29, 1, 30), paris);
  print('${t.year}-${two(t.month)}-${two(t.day)} ${two(t.hour)}:${two(t.minute)}');
}
