Frame = Struct.new(:buf, :secret)

f = Frame.new([1, 2, 3, 4], 42)
puts f.buf[ARGV[0].to_i]
