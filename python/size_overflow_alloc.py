import sys

count = int(sys.argv[1])
size = count * 8
records = bytearray(size)
records[8] = 99
print("stored")
