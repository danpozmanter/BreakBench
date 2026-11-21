Frame = Struct.new(:buf, :guard)
f = Frame.new([0, 0, 0, 0], 7)
f.buf[ARGV[0].to_i] = 99
puts f.guard
