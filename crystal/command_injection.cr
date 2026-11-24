File.delete?("/tmp/bb_pwned")
system("echo #{ARGV[0]} > /dev/null") # CONTROL! Process.run("echo", [ARGV[0]], output: Process::Redirect::Close)
puts(File.exists?("/tmp/bb_pwned") ? "injected" : "safe")
