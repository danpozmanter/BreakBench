# LEVEL: LANGUAGE

got = false
Signal.trap("TERM") { got = true }
Process.kill("TERM", Process.pid)
sleep 0.1 until got
puts "cleaned up"
