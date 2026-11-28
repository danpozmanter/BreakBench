import sys

line = sys.argv[1]
pos = line.index(":") # CONTROL! pos = line.find(":")
print(line[pos + 1:]) # CONTROL! print("no colon" if pos < 0 else line[pos + 1:])
