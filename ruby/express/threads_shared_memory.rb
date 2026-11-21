# LEVEL: LANGUAGE

slots = Array.new(10, 0)
threads = [0, 5].map do |start|
  Thread.new { (start...start + 5).each { |i| slots[i] = i } }
end
threads.each(&:join)
puts slots.sum
