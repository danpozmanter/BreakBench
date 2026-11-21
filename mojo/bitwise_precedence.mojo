from std.sys import argv


def main() raises:
    var x = atol(argv()[1])
    var even = x & 1 == 0  # BREAK!
    # CONTROL! var even = (x & 1) == 0
    print("even" if even else "odd")
