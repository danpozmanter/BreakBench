# LEVEL: STD

from std.collections import Set


def main():
    var s = Set[Tuple[Int, Int]]()
    s.add((1, 2))
    print(String((1, 2) in s).lower())
