from std.sys import argv


def main() raises:
    var d = atol(argv()[1])
    print(100 // d) # CONTROL! print("cannot divide" if d == 0 else String(100 // d))
