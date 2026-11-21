n = ARGV[0].to_i64
buf = Bytes.new(n)
buf[n - 1] = 1
puts buf.size
