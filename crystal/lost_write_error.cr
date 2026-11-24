File.open("/dev/full", "w") { |f| f.puts "data" } # CONTROL! begin; File.open("/dev/full", "w") { |f| f.puts "data" }; puts "saved"; rescue IO::Error; puts "failed"; end
puts "saved" # BREAK!
