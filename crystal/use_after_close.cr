f = File.new("/tmp/bb_close.txt", "w")
f.print("a")
f.close
f.print("b") # BREAK!
puts "ok"
