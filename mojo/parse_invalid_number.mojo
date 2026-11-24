from std.sys import argv


def main() raises:
    var n = atol(argv()[1]) # BREAK!
    print(n + 1) # BREAK!
    # CONTROL! try:
        # CONTROL! var n = atol(argv()[1])
        # CONTROL! print(n + 1)
    # CONTROL! except:
        # CONTROL! print("invalid")
