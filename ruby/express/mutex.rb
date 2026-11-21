# LEVEL: LANGUAGE

lock = Mutex.new
counter = 0
threads = 2.times.map { Thread.new { 100_000.times { lock.synchronize { counter += 1 } } } }
threads.each(&:join)
puts counter
