File.delete("/tmp/bb_pwned") if File.exist?("/tmp/bb_pwned")
system("echo #{ARGV[0]} > /dev/null")
puts(File.exist?("/tmp/bb_pwned") ? "injected" : "safe")
