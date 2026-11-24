import sys

readings = [10, 20, 30]
i = int(sys.argv[1])
print(readings[i] - readings[i - 1]) # CONTROL! print(readings[i] - readings[i - 1] if i > 0 else "no previous")
