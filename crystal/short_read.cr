child = Process.new("sh", ["-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"], output: :pipe)
message = Bytes.new(16)
child.output.read(message)
child.wait
puts String.new(message)
