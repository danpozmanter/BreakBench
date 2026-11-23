import sys


def walk(n: int) -> int:
    if n == 0:
        return 0
    return (walk(n - 1) * 31 + n) % 1_000_000_007


print(walk(int(sys.argv[1])))
