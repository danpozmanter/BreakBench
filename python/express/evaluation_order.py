# LEVEL: LANGUAGE

n = 0


def next_value():
    global n
    n += 1
    return n


def pair(a, b):
    return f"{a} {b}"


print(pair(next_value(), next_value()))
