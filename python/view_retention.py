import sys

n = int(sys.argv[1])
heads = []
prefixes = []
for i in range(n):
    buf = bytes([i & 255]) * 32768
    heads.append(buf[:16])
    big = chr(97 + i % 26) * 32768
    prefixes.append(big[:16])
print(len(heads))
