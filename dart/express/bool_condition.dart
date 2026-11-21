// LEVEL: LANGUAGE

void main() {
  if ('x'.compareTo('x') == 0) print('same');
  if ('x'.compareTo('x')) print('different'); // REJECT!
}
