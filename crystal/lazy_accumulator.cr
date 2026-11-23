count = ARGV[0].to_i
total = 0_i64
File.open("/dev/zero") do |source|
  count.times do
    message = Bytes.new(4096)
    source.read_fully(message)
    total += message.size
  end
end
puts total
