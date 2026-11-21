# LEVEL: LANGUAGE

t = Thread.new { sleep 0.05; 7 }
puts "started"
puts t.value
