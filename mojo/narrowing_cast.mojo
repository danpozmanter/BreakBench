from std.sys import argv


def main() raises:
    var v = atol(argv()[1])
    # CONTROL! if v < 0 or v > 255: print("out of range"); return
    var b = UInt8(v)
    print(b)
