count = Integer(ARGV[0])
total = 0
File.open("/dev/zero", "rb") do |source|
  count.times do
    message = source.read(4096)
    total += message.bytesize
  end
end
puts total
