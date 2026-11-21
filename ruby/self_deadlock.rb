LOCK = Mutex.new
$balance = 0

def deposit(amount)
  LOCK.synchronize { $balance += amount }
end

LOCK.synchronize { deposit(10) }
puts "done"
