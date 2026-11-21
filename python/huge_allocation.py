import sys

n = int(sys.argv[1])
buf = bytearray(n)
buf[n - 1] = 1
print(len(buf))
