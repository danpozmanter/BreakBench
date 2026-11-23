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

done = Channel(Nil).new(2)
2.times { spawn { claim.call; done.send(nil) } }
2.times { ready.receive }
2.times { release.send(nil) }
2.times { done.receive }
puts winners
