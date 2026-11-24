save(path) = write(path, "data")

save("/dev/null/out.txt") # CONTROL! try; save("/dev/null/out.txt"); println("saved"); catch; println("failed"); end
println("saved") # BREAK!
