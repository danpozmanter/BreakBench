class Account
  property balance : Int32

  def initialize(@balance)
  end
end

def transfer(from : Account, to : Account, amount : Int32)
  # CONTROL! return if from.same?(to)
  new_from = from.balance - amount
  new_to = to.balance + amount
  from.balance = new_from
  to.balance = new_to
end

a = Account.new(100)
transfer(a, a, 30)
puts a.balance
