from std.sys import argv


def is_odd(n: Int) -> Bool:
    return n % 2 == 1


def main() raises:
    print("odd" if is_odd(atol(argv()[1])) else "even")
