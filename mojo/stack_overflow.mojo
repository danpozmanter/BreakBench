from std.sys import argv


def walk(n: Int) -> Int:
    if n == 0:
        return 0
    return (walk(n - 1) * 31 + n) % 1_000_000_007


def main() raises:
    print(walk(atol(argv()[1])))
