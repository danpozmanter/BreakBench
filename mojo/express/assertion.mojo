# LEVEL: STD

from std.sys import argv


def main():
    print("before")
    debug_assert(len(argv()) + 1 == 3, "broken invariant")
    print("after")
