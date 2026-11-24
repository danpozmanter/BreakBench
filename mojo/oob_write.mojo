from std.sys import argv


@fieldwise_init
struct Frame(Copyable, Movable):
    var buf: Array[Int, 4]
    var guard: Int


def main() raises:
    var buf: Array[Int, 4] = [0, 0, 0, 0]
    var f = Frame(buf^, 7)
    var idx = atol(argv()[1])
    f.buf[idx] = 99 # CONTROL! if idx >= 0 and idx < 4: f.buf[idx] = 99
    print(f.guard)
