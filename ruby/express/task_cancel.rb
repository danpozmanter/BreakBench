# LEVEL: LANGUAGE

t = Thread.new { loop { sleep 0.001 } }
sleep 0.02
t.kill
t.join
puts "stopped"
