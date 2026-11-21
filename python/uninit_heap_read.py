session = bytearray(64)
session[32:44] = b"SECRET-TOKEN"
del session
reply = bytearray(64)
print(reply[32:44].hex())
