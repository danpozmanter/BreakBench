import sys

line = sys.argv[1]
pos = line.find(":")
print(line[pos + 1:])
