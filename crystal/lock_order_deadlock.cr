def transfer(first : Mutex, second : Mutex, done : Channel(Nil))
  first.synchronize do
    sleep 100.milliseconds
    second.synchronize { }
  end
  done.send(nil)
end

a = Mutex.new
b = Mutex.new
done = Channel(Nil).new
spawn transfer(a, b, done)
spawn transfer(b, a, done)
2.times { done.receive }
puts "finished"
