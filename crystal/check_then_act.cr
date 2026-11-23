state_lock = Mutex.new
ready = Channel(Nil).new(2)
release = Channel(Nil).new(2)
claimed = false
winners = 0

claim = -> do
  available = state_lock.synchronize { !claimed } # BREAK!
  # CONTROL! available = state_lock.synchronize { value = !claimed; claimed = claimed || value; value }
  ready.send(nil)
  release.receive
  if available
    state_lock.synchronize { claimed = true; winners += 1 }
  end
end

t1 = spawn { claim.call }
t2 = spawn { claim.call }
2.times { ready.receive }
2.times { release.send(nil) }
t1.join
t2.join
puts winners
