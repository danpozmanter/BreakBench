from std.sys import argv


def main() raises:
    var stock = {"apple": 3, "plum": 4}
    var name = String(argv()[1])
    print(stock[name] + 5)
