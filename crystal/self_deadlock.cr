LOCK = Mutex.new
balance = 0

def deposit(amount, &)
  LOCK.synchronize { yield amount }
end

LOCK.synchronize do
  deposit(10) { |a| balance += a }
end
puts "done"
