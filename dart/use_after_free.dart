class Rec {
  int value;
  Rec(this.value);
}

void main() {
  Rec? a = Rec(1234);
  final b = a;
  a = null;
  final c = Rec(6666);
  print(b.value);
}
