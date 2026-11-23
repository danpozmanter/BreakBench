count = Integer(ARGV[0])
size = count * 8
records = "\0".b * size
records.setbyte(8, 99)
puts "stored"
