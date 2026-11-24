lock = Mutex.new
woken = ConditionVariable.new
# CONTROL! ready = false
lock.synchronize { woken.signal } # CONTROL! lock.synchronize { ready = true; woken.signal }
worker = Thread.new do
  lock.synchronize { woken.wait(lock) } # CONTROL! lock.synchronize { woken.wait(lock) until ready }
  puts "done"
end
worker.join
