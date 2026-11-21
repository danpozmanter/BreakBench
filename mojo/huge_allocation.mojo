from std.sys import argv


def main() raises:
    var n = atol(argv()[1])
    var buf = List[UInt8](length=n, fill=0)
    buf[n - 1] = 1
    print(len(buf))
