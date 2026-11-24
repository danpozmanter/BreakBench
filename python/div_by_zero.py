import sys

d = int(sys.argv[1])
print(100 // d) # CONTROL! print("cannot divide" if d == 0 else 100 // d)
