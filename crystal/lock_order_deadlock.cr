def transfer(first : Mutex, second : Mutex, ready : Channel(Nil), release : Channel(Nil), done : Channel(Nil))
  first.synchronize do
    ready.send(nil)
    release.receive
    second.synchronize { }
  end
  done.send(nil)
end

a = Mutex.new
b = Mutex.new
done = Channel(Nil).new
ready = Channel(Nil).new(2)
release = Channel(Nil).new(2)
spawn transfer(a, b, ready, release, done)
spawn transfer(b, a, ready, release, done)
2.times { ready.receive }
2.times { release.send(nil) }
2.times { done.receive }
puts "finished"
