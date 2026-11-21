import sys

s = "ab" + sys.argv[1]
print("equal" if s == "abc" else "different")
