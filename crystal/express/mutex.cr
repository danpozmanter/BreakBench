# LEVEL: STD

lock = Mutex.new
counter = 0
done = Channel(Nil).new
2.times do
  spawn do
    100_000.times { lock.synchronize { counter += 1 } }
    done.send(nil)
  end
end
2.times { done.receive }
puts counter
