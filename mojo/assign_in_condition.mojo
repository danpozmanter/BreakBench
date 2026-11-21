from std.sys import argv


def main() raises:
    var x = atol(argv()[1])
    var label = "not one"
    if x = 1:  # BREAK!
    # CONTROL! if x == 1:
        label = "one"
    print(label)
