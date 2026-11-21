# LEVEL: STD

from std.utils import StaticTuple


def main():
    var a = StaticTuple[Int, 3](1, 2, 3)
    var b = a
    b[0] = 9
    print(a[0])
