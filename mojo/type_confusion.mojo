from std.sys import argv


def add(a: Int, b: Int) -> Int:
    return a + b


def main() raises:
    var raw = String(argv()[1])
    print(add(raw, 3))  # BREAK!
    print(raw, add(1, 2))
