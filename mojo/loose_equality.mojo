from std.sys import argv


def main() raises:
    var code = String(argv()[1])
    print("same" if code == 0 else "different") # CONTROL! print("same" if code == "0" else "different")
