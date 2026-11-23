IO.popen(["sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"]) do |child|
  message = child.read(16)
  puts message
end
