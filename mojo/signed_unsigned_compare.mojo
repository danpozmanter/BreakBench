from std.sys import argv


def main() raises:
    var xs = [1, 2, 3]
    var i = atol(argv()[1])
    print("less" if i < len(xs) else "not less")
