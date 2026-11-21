from std.sys import argv


def main() raises:
    var n = atol(argv()[1])
    var name: String
    if n == 1:
        name = "one"
    elif n == 2:
        name = "two"
    else:
        name = "other"
    print(name)
