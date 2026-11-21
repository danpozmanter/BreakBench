# LEVEL: STD

d = Deque(Int32).new
d.push(1)
d.unshift(0)
d.push(2)
puts "#{d.shift} #{d.pop}"
