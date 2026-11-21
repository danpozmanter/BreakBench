# LEVEL: STD

from std.collections import BitSet


def main():
    var b = BitSet[1024]()
    b.set(1000)
    print(String(b.test(1000)).lower(), String(b.test(999)).lower())
