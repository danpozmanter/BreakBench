from std.collections import Set


def main() raises:
    var seen = Set[List[Int]]()
    var key: List[Int] = [1, 2]
    seen.add(key.copy())
    key[0] = 9
    for e in seen:
        print("found" if e in seen else "lost")
