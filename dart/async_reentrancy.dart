var balance = 100;

Future<void> withdraw(int amount) async {
  if (balance >= amount) {
    await Future<void>.delayed(const Duration(milliseconds: 10));
    balance -= amount;
  }
}

Future<void> main() async {
  await Future.wait([withdraw(80), withdraw(80)]);
  print(balance);
}
