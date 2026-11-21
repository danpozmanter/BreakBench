from std.sys import argv


@fieldwise_init
struct Obj(Movable):
    var payload: List[UInt8]

    def callback(self) -> Int:
        return len(self.payload)


def main() raises:
    var total = 0
    for _ in range(atol(argv()[1])):
        var a = List[UInt8](length=2048, fill=0)
        var b = List[UInt8](length=2048, fill=0)
        var o = Obj(List[UInt8](length=2048, fill=0))
        total += o.callback() + len(a) - len(b)
    print("unreachable" if total == 0 else "done")
