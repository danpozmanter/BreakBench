claimed = ARGV[0].to_i
buf = "\0" * 64
buf[2, 15] = "SECRET-KEY-0042"
buf[0, 2] = "hi"
payload = buf[0, 2]
# CONTROL! if claimed > payload.bytesize then puts "invalid"; exit end
reply = payload[0, claimed]
puts reply
