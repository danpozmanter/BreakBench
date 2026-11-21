type Account = object
  balance: int

var accounts = @[Account(balance: 100)]
for acct in accounts: # BREAK!
  acct.balance += 50 # BREAK!
# CONTROL! for acct in accounts.mitems: acct.balance += 50
echo accounts[0].balance
