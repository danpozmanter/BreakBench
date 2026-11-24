Frame = Struct.new(:buf, :secret)

f = Frame.new([1, 2, 3, 4], 42)
puts f.buf[ARGV[0].to_i] # CONTROL! i = ARGV[0].to_i; puts(i >= 0 && i < f.buf.size ? f.buf[i] : "out of range")
