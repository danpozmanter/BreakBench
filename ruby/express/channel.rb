# LEVEL: LANGUAGE

q = Queue.new
t = Thread.new { (1..3).each { |v| q << v } }
got = Array.new(3) { q.pop }
t.join
puts got.join(" ")
