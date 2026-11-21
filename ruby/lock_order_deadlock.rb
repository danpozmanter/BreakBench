a = Mutex.new
b = Mutex.new

def transfer(first, second)
  first.synchronize do
    sleep 0.1
    second.synchronize {}
  end
end

t1 = Thread.new { transfer(a, b) }
t2 = Thread.new { transfer(b, a) }
t1.join
t2.join
puts "finished"
