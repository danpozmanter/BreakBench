from std.sys import argv


def main() raises:
    var s = String("ab") + String(argv()[1])
    print("equal" if s == "abc" else "different")
