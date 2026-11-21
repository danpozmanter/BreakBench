# LEVEL: STD

from std.collections import Counter


def main():
    var counts = Counter[String]()
    for w in ["a", "b", "a"]:
        counts[w] += 1
    print("a=" + String(counts["a"]) + " b=" + String(counts["b"]))
