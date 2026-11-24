n = ARGV[0].to_i
# CONTROL! if n > (1 << 30) then puts "too large"; exit end
buf = "\0".b * n
buf.setbyte(n - 1, 1)
puts buf.bytesize
