import re
import sys

print("match" if re.match(r"^(a+)+$", sys.argv[1]) else "no match")
