import sys

xs = [int(a) for a in sys.argv[1:]]
print(max(xs) + 1) # CONTROL! print(max(xs) + 1 if xs else "no readings")
