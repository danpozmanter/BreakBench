class Account
  getter balance = 100
  @lock = Mutex.new

  def withdraw(amount)
    @lock.lock
    return if amount > @balance
    @balance -= amount
    @lock.unlock
  end
end

account = Account.new
account.withdraw(500)
done = Channel(Nil).new
spawn do
  account.withdraw(30)
  done.send(nil)
end
done.receive
puts account.balance
