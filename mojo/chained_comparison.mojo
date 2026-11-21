from std.sys import argv


def main() raises:
    var x = atol(argv()[1])
    var inside = 1 < x < 3  # BREAK!
    # CONTROL! var inside = 1 < x and x < 3
    print("inside" if inside else "outside")
