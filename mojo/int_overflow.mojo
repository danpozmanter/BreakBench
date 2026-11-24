from std.sys import argv


def main() raises:
    var n = atol(argv()[1])
    print(n + 1) # CONTROL! print(UInt64(n) + 1)
