import sys

xs = [1, 2, 3]
i = int(sys.argv[1])
print("less" if i < len(xs) else "not less")
