from std.sys import argv


def main() raises:
    var v = atol(argv()[1])
    var b = UInt8(v)
    print(b)
