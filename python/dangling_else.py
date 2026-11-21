import sys

a = int(sys.argv[1]) != 0
b = True
r = "unset"
if a:
    if b:
        r = "both"
else:
    r = "not a"
print(r)
