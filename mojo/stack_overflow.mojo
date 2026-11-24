from std.sys import argv


def walk(n: Int) -> Int:
    if n == 0:
        return 0
    return (walk(n - 1) * 31 + n) % 1_000_000_007


def main() raises:
    print(walk(atol(argv()[1]))) # BREAK!
    # CONTROL! var n = atol(argv()[1])
    # CONTROL! var acc = 0
    # CONTROL! for i in range(1, n + 1):
        # CONTROL! acc = (acc * 31 + i) % 1_000_000_007
    # CONTROL! print(acc)
