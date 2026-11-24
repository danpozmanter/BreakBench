import sys

n = int(sys.argv[1])
# CONTROL! if n > 1 << 30: print("too large"); sys.exit(0)
buf = bytearray(n)
buf[n - 1] = 1
print(len(buf))
