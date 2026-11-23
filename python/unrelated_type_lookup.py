import sys

ids = [10, 20, 30]
wanted = sys.argv[1]
print("found" if wanted in ids else "missing")  # CONTROL! print("found" if int(wanted) in ids else "missing")
