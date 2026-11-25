import json
import sys

count = int(sys.argv[1])
mean = 0.0 / count # CONTROL! mean = 0.0 / count if count else float("nan")
print(json.dumps({"mean": mean})) # BREAK!
# CONTROL! try:
    # CONTROL! print(json.dumps({"mean": mean}, allow_nan=False))
# CONTROL! except ValueError:
    # CONTROL! print("refused")
