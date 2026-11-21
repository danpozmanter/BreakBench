# LEVEL: LANGUAGE

from std.sys import argv


def main() raises:
    var n = Int64(atol(argv()[1]))
    print(n + 1)
