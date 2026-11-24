from std.sys import argv


@fieldwise_init
struct Frame(Copyable, Movable):
    var buf: Array[Int, 4]
    var secret: Int


def main() raises:
    var buf: Array[Int, 4] = [1, 2, 3, 4]
    var f = Frame(buf^, 42)
    var idx = atol(argv()[1])
    print(f.buf[idx]) # CONTROL! print(String(f.buf[idx]) if idx >= 0 and idx < 4 else "out of range")
