HEADER = 5

message = ARGV[0]
payload = message.bytesize - HEADER
if payload < 0
  puts "short"
else
  puts payload
end
