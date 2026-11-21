Account = Struct.new(:balance)

def transfer(from, to, amount)
  new_from = from.balance - amount
  new_to = to.balance + amount
  from.balance = new_from
  to.balance = new_to
end

a = Account.new(100)
transfer(a, a, 30)
puts a.balance
