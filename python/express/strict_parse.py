# LEVEL: LANGUAGE

import sys

try:
    int(sys.argv[1])
    print("valid")
except ValueError:
    print("invalid")
