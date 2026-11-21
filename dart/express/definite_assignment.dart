// LEVEL: LANGUAGE

void main(List<String> args) {
  final ready = args.length < 5;
  int x;
  if (ready) {
    x = 5;
  } else {
    x = 5;
  }
  int y; // REJECT!
  if (ready) y = 1; // REJECT!
  print(y); // REJECT!
  print(x);
}
