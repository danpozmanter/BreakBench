LOCK = Mutex.new
$balance = 100

def withdraw(amount)
  LOCK.lock
  return if amount > $balance # CONTROL! if amount > $balance then LOCK.unlock; return end
  $balance -= amount
  LOCK.unlock
end

withdraw(500)
worker = Thread.new { withdraw(30) }
worker.join
puts $balance
