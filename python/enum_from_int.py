import sys
from enum import Enum


class Color(Enum):
    RED = 0
    GREEN = 1
    BLUE = 2


print("before", flush=True)
print(Color(int(sys.argv[1]))) # CONTROL! n = int(sys.argv[1]); print(Color(n) if n in {c.value for c in Color} else "invalid")
