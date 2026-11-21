from std.sys import argv


def main() raises:
    var n = atol(argv()[1])
    var x: Int
    if n > 5:
        x = 10
    print(x)  # BREAK!
    print(n)
