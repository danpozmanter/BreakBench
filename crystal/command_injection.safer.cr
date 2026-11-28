File.delete?("/tmp/bb_pwned")
Process.run("echo", [ARGV[0]], output: Process::Redirect::Close)
puts(File.exists?("/tmp/bb_pwned") ? "injected" : "safe")
