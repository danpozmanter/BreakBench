LOCK = Mutex.new
balance = 0

def deposit(amount, &)
  LOCK.synchronize { yield amount }
end

LOCK.synchronize do # CONTROL! deposit(10) { |a| balance += a }
  deposit(10) { |a| balance += a } # BREAK!
end # BREAK!
puts "done"
