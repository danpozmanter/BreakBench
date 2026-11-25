import 'dart:async';

Future<(int, List<Future<void>>)> firstAnswer() async {
  final answers = StreamController<int>();
  final workers = [for (var i = 0; i < 2; i++) Future(() => answers.add(42))];
  return (await answers.stream.first, workers);
}

Future<void> main() async {
  final (answer, workers) = await firstAnswer();
  print(answer);
  await Future.wait(workers);
  print('done');
}
