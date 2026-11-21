store = []
lock = Mutex.new
task = Thread.new do # CONTROL! Thread.new do
  sleep 0.05
  lock.synchronize { store << 1 }
end # CONTROL! end.join
puts store.size
