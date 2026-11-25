import sys


def size(n: int) -> str:
    label = "small"
    if n > 5:;  # BREAK!
    # CONTROL! if n > 5:
        label = "big"
    return label


print(size(int(sys.argv[1])))
print(size(int(sys.argv[2])))
