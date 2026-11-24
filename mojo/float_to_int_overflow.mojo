from std.sys import argv


def main() raises:
    var x = atof(argv()[1])
    var v = Int64(x) # CONTROL! var v = x.cast[DType.int128]()
    print(v)
