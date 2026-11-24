count = ARGV[0].to_i64
# CONTROL! if count > (1_i64 << 27); puts "too large"; exit; end
size = count * 8
records = Bytes.new(size)
records[8] = 99
puts "stored"
