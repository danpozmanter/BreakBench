# LEVEL: STD

slots = Array.new(10, 0)
done = Channel(Nil).new
[0, 5].each do |start|
  spawn do
    (start...start + 5).each { |i| slots[i] = i }
    done.send(nil)
  end
end
2.times { done.receive }
puts slots.sum
