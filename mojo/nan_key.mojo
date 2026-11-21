from std.collections import Set


def main() raises:
    var a = atof("nan")
    var b = atof("nan")
    var s = Set[Float64]()
    s.add(a)
    print("found" if b in s else "missing")
