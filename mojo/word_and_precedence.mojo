from std.sys import argv


def main() raises:
    var ready = argv()[1] == "yes"
    var approved = argv()[2] == "yes"
    var ok = ready and approved
    print("go" if ok else "wait")
