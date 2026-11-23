import sys

count = int(sys.argv[1])
total = 0
with open("/dev/zero", "rb") as source:
    for _ in range(count):
        message = source.read(4096)
        total += len(message)
print(total)
