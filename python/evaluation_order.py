n = 0


def next_value() -> int:
    global n
    n += 1
    return n


def pair(a: int, b: int) -> str:
    return f"{a} {b}"


print(pair(next_value(), next_value()))
