import sys # CONTROL! import math, sys

x = float(sys.argv[1])
y = float(sys.argv[2])
a = x + y
print("equal" if a == 0.3 else "not equal") # CONTROL! print("equal" if math.isclose(a, 0.3) else "not equal")
