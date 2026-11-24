from std.sys import argv


def main() raises:
    var s = UInt64(atol(argv()[1]))
    var one: UInt64 = 1
    print(one << s) # CONTROL! print(UInt128(1) << UInt128(s))
