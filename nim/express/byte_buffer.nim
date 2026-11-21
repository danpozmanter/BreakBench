# LEVEL: LANGUAGE

var buf: seq[byte]
for i in 0 ..< 100_000:
  buf.add(byte(i and 0xFF))
echo buf.len
