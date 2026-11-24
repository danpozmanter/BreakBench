count = Integer(ARGV[0])
# CONTROL! if count > (1 << 27) then puts "too large"; exit end
size = count * 8
records = "\0".b * size
records.setbyte(8, 99)
puts "stored"
