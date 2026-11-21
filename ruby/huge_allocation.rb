n = ARGV[0].to_i
buf = "\0".b * n
buf.setbyte(n - 1, 1)
puts buf.bytesize
