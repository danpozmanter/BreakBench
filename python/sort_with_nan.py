import math

xs = [5.0, math.nan, 3.0, 1.0, math.nan, 4.0, 2.0]
xs.sort() # CONTROL! xs = sorted(x for x in xs if not math.isnan(x))
finite = [x for x in xs if not math.isnan(x)]
print("ordered" if all(a <= b for a, b in zip(finite, finite[1:])) else "unordered")
