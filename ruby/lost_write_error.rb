File.open("/dev/full", "w") { |f| f.puts "data" } # CONTROL! begin; File.open("/dev/full", "w") { |f| f.puts "data" }; puts "saved"; rescue SystemCallError; puts "failed"; end
puts "saved" # BREAK!
