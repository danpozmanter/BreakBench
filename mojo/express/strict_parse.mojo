# LEVEL: STD

from std.sys import argv


def main():
    try:
        _ = atol(argv()[1])
        print("valid")
    except:
        print("invalid")
