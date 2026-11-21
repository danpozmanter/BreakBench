struct Account { var balance: Int }

var accounts = [Account(balance: 100)]
for acct in accounts {
    acct.balance += 50 // BREAK!
}
print(accounts[0].balance)
