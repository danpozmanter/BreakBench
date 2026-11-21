class IntBox {
  int value;
  IntBox(this.value);
}

IntBox make() {
  final local = IntBox(4242);
  return local;
}

int clobber() => List.filled(64, 7).last;

void main() {
  final r = make();
  clobber();
  print(r.value);
}
