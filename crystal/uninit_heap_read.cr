session = Bytes.new(64)
"SECRET-TOKEN".to_slice.copy_to(session + 32)
session = nil
reply = Bytes.new(64)
puts reply[32, 12].hexstring
