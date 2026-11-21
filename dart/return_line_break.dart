int total(int a, int b) {
  return // CONTROL! return a + b;
      a + b; // BREAK!
}

void main() {
  print(total(2, 3));
}
