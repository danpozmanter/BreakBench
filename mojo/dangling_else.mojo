from std.sys import argv


def main() raises:
    var a = atol(argv()[1]) != 0
    var b = True
    var r = "unset"
    if a:
        if b:
            r = "both"
    else:
        r = "not a"
    print(r)
