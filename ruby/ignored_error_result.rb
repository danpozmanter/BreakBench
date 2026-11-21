def save(path)
  File.write(path, "data")
end

save("/nonexistent/dir/out.txt")
puts "saved"
