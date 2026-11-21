from dataclasses import dataclass


@dataclass
class Account:
    balance: int


accounts = [Account(100)]
for acct in accounts:
    acct.balance += 50
print(accounts[0].balance)
