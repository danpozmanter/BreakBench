from std.sys import argv


struct Rec(Movable):
    var data: List[UInt8]

    def __init__(out self):
        self.data = List[UInt8](length=4096, fill=1)


def main() raises:
    var n = atol(argv()[1])
    var seen = 0
    for _ in range(n):
        var rec = Rec()
        seen += Int(rec.data[0])
    print("done" if seen == n else "lost")
