from std.sys import argv


def main() raises:
    var n = atol(argv()[1])
    # CONTROL! if n > (1 << 30): print("too large"); return
    var buf = List[UInt8](length=n, fill=0)
    buf[n - 1] = 1
    print(len(buf))
