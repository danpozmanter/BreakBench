from std.sys import argv


def main() raises:
    var name = String("a👍b")
    var n = atol(argv()[1])
    print(name[0:n]) # CONTROL! print(name[codepoint=0:n])
