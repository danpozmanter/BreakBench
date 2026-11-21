File.delete?("/tmp/bb_pwned")
system("echo #{ARGV[0]} > /dev/null")
puts(File.exists?("/tmp/bb_pwned") ? "injected" : "safe")
