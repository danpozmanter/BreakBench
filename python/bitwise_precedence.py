import sys

x = int(sys.argv[1])
even = x & 1 == 0
print("even" if even else "odd")
