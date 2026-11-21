session = "\0".b * 64
session[32, 12] = "SECRET-TOKEN"
session = nil
reply = "\0".b * 64
puts reply[32, 12].unpack1("H*")
