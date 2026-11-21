# LEVEL: LANGUAGE

from std.sys import argv


def main():
    var ready = len(argv()) < 5
    var x: Int
    if ready:
        x = 5
    else:
        x = 5
    var y: Int  # REJECT!
    if ready:  # REJECT!
        y = 1  # REJECT!
    print(y)  # REJECT!
    print(x)
