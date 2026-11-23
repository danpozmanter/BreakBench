import sys


def is_odd(n: int) -> bool:
    return n % 2 == 1


print("odd" if is_odd(int(sys.argv[1])) else "even")
