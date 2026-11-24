import sys

count = int(sys.argv[1])
# CONTROL! if count > 1 << 27: print("too large"); sys.exit(0)
size = count * 8
records = bytearray(size)
records[8] = 99
print("stored")
