import sys


def add(a: int, b: int) -> int:
    return a + b


raw = sys.argv[1]
print(add(raw, 3))  # CONTROL! print(add(int(raw), 3))
