import sys

n = int(sys.argv[1])
with open("/tmp/bb_fd.txt", "w") as seed:
    seed.write("x")
for _ in range(n):
    f = open("/tmp/bb_fd.txt")
    f.read(1)
print("done")
