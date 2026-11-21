class Rec {
  int value;
  Rec(this.value);
}

void main() {
  Rec? a = Rec(0);
  a = null;
  a = null;
  final x = Rec(1);
  final y = Rec(2);
  print(x.value);
}
