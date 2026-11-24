n = ARGV[0].to_i64
# CONTROL! if n > (1_i64 << 30); puts "too large"; exit; end
buf = Bytes.new(n)
buf[n - 1] = 1
puts buf.size
