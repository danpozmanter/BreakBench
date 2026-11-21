import sys

x = int(sys.argv[1])
inside = 1 < x < 3
print("inside" if inside else "outside")
