lock = Mutex.new
woken = ConditionVariable.new
lock.synchronize { woken.signal }
worker = Thread.new do
  lock.synchronize { woken.wait(lock) }
  puts "done"
end
worker.join
