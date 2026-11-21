# LEVEL: LANGUAGE

import sys

n = int(sys.argv[1])
try:
    bytearray(n)
    print("allocated")
except MemoryError:
    print("allocation failed")
