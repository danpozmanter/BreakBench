import sys

counts = [0] * 256
for b in sys.argv[1].encode():
    counts[b] += 1
print(sum(counts[128:]))
