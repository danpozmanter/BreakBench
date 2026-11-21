f = File.open("/tmp/bb_close.txt", "w")
f.write("a")
f.close
f.write("b")
puts "ok"
