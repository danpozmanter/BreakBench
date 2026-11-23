state_lock = Mutex.new
ready = Queue.new
release = Queue.new
claimed = false
winners = 0
workers = 2.times.map do
  Thread.new do
    available = state_lock.synchronize { !claimed } # BREAK!
    # CONTROL! available = state_lock.synchronize { value = !claimed; claimed = claimed || value; value }
    ready << true
    release.pop
    if available
      state_lock.synchronize { claimed = true; winners += 1 }
    end
  end
end
2.times { ready.pop }
2.times { release << true }
workers.each(&:join)
puts winners
