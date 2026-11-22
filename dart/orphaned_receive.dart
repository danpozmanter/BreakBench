import 'dart:async';

Future<void> main() async {
  final answer = StreamController<int>();
  Future(() => answer.add(int.parse('x')));
  print(await answer.stream.first);
}
