type Account = object
  balance: int

proc transfer(src, dst: var Account, amount: int) =
  let newFrom = src.balance - amount
  let newTo = dst.balance + amount
  src.balance = newFrom
  dst.balance = newTo

var a = Account(balance: 100)
transfer(a, a, 30)
echo a.balance
