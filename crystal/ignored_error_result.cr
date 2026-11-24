def save(path : String)
  File.write(path, "data")
end

save("/dev/null/out.txt") # CONTROL! begin; save("/dev/null/out.txt"); puts "saved"; rescue File::Error; puts "failed"; end
puts "saved" # BREAK!
