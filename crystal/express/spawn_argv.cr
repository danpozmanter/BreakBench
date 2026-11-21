# LEVEL: STD

io = IO::Memory.new
Process.run("echo", ["hi; touch /tmp/bb_x"], output: io)
print io.to_s
