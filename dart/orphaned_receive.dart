import 'dart:async';

Future<void> main() async {
  final answer = StreamController<int>();
  Future(() => answer.add(int.parse('x'))); // CONTROL! Future(() { final n = int.tryParse('x'); if (n != null) answer.add(n); answer.close(); });
  print(await answer.stream.first); // CONTROL! final values = await answer.stream.toList(); print(values.isEmpty ? 'failed' : values.first);
}
