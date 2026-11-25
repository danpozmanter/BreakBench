from std.sys import argv


def size(n: Int) -> String:
    var label = "small"
    if n > 5:;  # BREAK!
    # CONTROL! if n > 5:
        label = "big"
    return label


def main() raises:
    print(size(atol(argv()[1])))
    print(size(atol(argv()[2])))
