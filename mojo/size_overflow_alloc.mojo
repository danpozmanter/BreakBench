from std.sys import argv


def main() raises:
    var count = atol(argv()[1])
    var size = count * 8
    var records = List[UInt8](length=size, fill=0)
    records[8] = 99
    print("stored")
