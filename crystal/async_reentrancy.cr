class Account
  getter balance = 100

  def withdraw(amount)
    if @balance >= amount
      sleep 10.milliseconds # CONTROL! @balance -= amount
      @balance -= amount # CONTROL! sleep 10.milliseconds
    end
  end
end

account = Account.new
done = Channel(Nil).new
2.times do
  spawn do
    account.withdraw(80)
    done.send(nil)
  end
end
2.times { done.receive }
puts account.balance
