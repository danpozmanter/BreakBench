child = open(`sh -c 'printf HELLO-WO; sleep 0.2; printf RLD-1234'`)
message = read(child, 16)
close(child)
println(String(message))
