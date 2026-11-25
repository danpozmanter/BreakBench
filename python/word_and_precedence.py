import sys

ready = sys.argv[1] == "yes"
approved = sys.argv[2] == "yes"
ok = ready and approved
print("go" if ok else "wait")
