class Account {
  Account(this.balance);
  int balance;
}

void transfer(Account from, Account to, int amount) {
  final newFrom = from.balance - amount;
  final newTo = to.balance + amount;
  from.balance = newFrom;
  to.balance = newTo;
}

void main() {
  final a = Account(100);
  transfer(a, a, 30);
  print(a.balance);
}
