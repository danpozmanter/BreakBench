from std.sys import argv


def main() raises:
    var x = atof(argv()[1])
    var y = atof(argv()[2])
    var a = x + y
    print("equal" if a == 0.3 else "not equal")
