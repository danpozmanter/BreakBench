from std.sys import argv


def main() raises:
    var line = String(argv()[1])
    var pos = line.find(":")
    print(line[byte = pos + 1 :]) # CONTROL! print(String(line[byte = pos + 1 :]) if pos >= 0 else "no colon")
