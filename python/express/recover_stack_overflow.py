# LEVEL: LANGUAGE

def walk(n):
    return walk(n + 1) + 1


try:
    walk(0)
except RecursionError:
    print("stack overflow")
