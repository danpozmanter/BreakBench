# LEVEL: LANGUAGE

buf = bytearray()
for i in range(100_000):
    buf.append(i & 0xFF)
print(len(buf))
