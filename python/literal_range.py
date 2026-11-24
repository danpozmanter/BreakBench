b = bytes([300])[0] # CONTROL! b = int.from_bytes((300).to_bytes(2, "big"), "big")
print(b)
