import json
import sys

depth = int(sys.argv[1])
# CONTROL! if depth > 1000: print("refused"); raise SystemExit(0)
json.loads("[" * depth + "]" * depth)
print("parsed")
