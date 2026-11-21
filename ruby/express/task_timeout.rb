# LEVEL: LANGUAGE

t = Thread.new { sleep 5 }
puts(t.join(0.1) ? "done" : "timed out")
exit 0
