class Counter {
  var count = 0;

  void increment() {
    count++;
  }
}

void runTwice(void Function() f) {
  f();
  f();
}

void main() {
  final counter = Counter();
  runTwice(counter.increment);
  print(counter.count);
}
