File.delete("/tmp/bb_pwned") if File.exist?("/tmp/bb_pwned")
system("echo", ARGV[0], out: File::NULL)
puts(File.exist?("/tmp/bb_pwned") ? "injected" : "safe")
