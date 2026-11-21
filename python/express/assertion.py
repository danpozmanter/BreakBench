# LEVEL: LANGUAGE

import sys

print("before", flush=True)
assert len(sys.argv) + 1 == 3
print("after")
