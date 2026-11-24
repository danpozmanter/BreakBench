import sys

v = int(sys.argv[1])
# CONTROL! if v < 0 or v > 255: print("out of range"); sys.exit(0)
b = bytes([v])[0]
print(b)
