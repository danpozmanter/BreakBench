from std.sys import argv


def main() raises:
    var a = atol(argv()[1])
    var b = atol(argv()[2])
    print(a // b) # CONTROL! print((UInt64(0) - UInt64(a)) // (UInt64(0) - UInt64(b)))
