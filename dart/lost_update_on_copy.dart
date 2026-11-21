class Account {
  int balance;
  Account(this.balance);
}

void main() {
  final accounts = [Account(100)];
  for (final acct in accounts) {
    acct.balance += 50;
  }
  print(accounts[0].balance);
}
