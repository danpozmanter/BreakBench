import 'dart:math';

void main(List<String> args) {
  final xs = args.map(int.parse).toList();
  print(xs.reduce(max) + 1);
}
