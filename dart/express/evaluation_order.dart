// LEVEL: LANGUAGE

String pair(int a, int b) => '$a $b';

void main() {
  var n = 0;
  int next() => ++n;
  print(pair(next(), next()));
}
