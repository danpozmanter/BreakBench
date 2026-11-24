import sys

n = int(sys.argv[1]) # CONTROL! n = int(sys.argv[1]) if sys.argv[1].lstrip("-").isdigit() else None
print(n + 1) # CONTROL! print("invalid" if n is None else n + 1)
