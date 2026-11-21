save(path) = write(path, "data")

save("/nonexistent/dir/out.txt")
println("saved")
