# LEVEL: STD

import sys

v = int(sys.argv[1])
try:
    v.to_bytes(1, signed=False)
    print("fits")
except OverflowError:
    print("does not fit")
