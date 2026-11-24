def save(path)
  File.write(path, "data")
end

save("/dev/null/out.txt") # CONTROL! begin; save("/dev/null/out.txt"); puts "saved"; rescue SystemCallError; puts "failed"; end
puts "saved" # BREAK!
