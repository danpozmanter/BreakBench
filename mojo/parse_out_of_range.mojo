from std.sys import argv


def main() raises:
    var n = atol(argv()[1]) # BREAK!
    print(n) # BREAK!
    # CONTROL! try:
        # CONTROL! print(atol(argv()[1]))
    # CONTROL! except:
        # CONTROL! print("invalid")
