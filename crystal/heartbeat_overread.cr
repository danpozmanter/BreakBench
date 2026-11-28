claimed = ARGV[0].to_i
buf = Bytes.new(64)
"SECRET-KEY-0042".to_slice.copy_to(buf + 2)
"hi".to_slice.copy_to(buf)
payload = buf[0, 2]
# CONTROL! if claimed > payload.size; puts "invalid"; exit; end
reply = payload[0, claimed]
puts String.new(reply)
