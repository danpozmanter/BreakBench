// LEVEL: STD

void main() {
  final total = const Duration(milliseconds: 1500) + const Duration(milliseconds: 500);
  final wrong = total + 5; // REJECT!
  print(total.inMilliseconds);
}
