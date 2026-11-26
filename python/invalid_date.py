import sys
from datetime import date

y, m, d = (int(a) for a in sys.argv[1:4])
day = date(y, m, d)  # BREAK!
print(day.isoformat())  # BREAK!
# CONTROL! try:
    # CONTROL! print(date(y, m, d).isoformat())
# CONTROL! except ValueError:
    # CONTROL! print("invalid")
