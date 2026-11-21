from std.sys import argv


def main() raises:
    var n = atol(argv()[1])
    with open("/tmp/bb_fd.txt", "w") as seed:
        seed.write("x")
    for _ in range(n):
        var f = open("/tmp/bb_fd.txt", "r")
        _ = f.read(1)
    print("done")
