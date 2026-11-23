count = ARGV[0].to_i64
size = count * 8
records = Bytes.new(size)
records[8] = 99
puts "stored"
