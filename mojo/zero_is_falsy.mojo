from std.sys import argv


def main() raises:
    var qty = Optional[Int](atol(argv()[1]))
    if qty:
        print("have", qty.value())
    else:
        print("missing")
