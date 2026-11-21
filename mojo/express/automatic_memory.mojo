# LEVEL: LANGUAGE

struct Rec(Movable):
    var id: Int
    var data: List[UInt8]

    def __init__(out self, id: Int):
        self.id = id
        self.data = List[UInt8](length=1016, fill=0)


def main():
    var last = Rec(0)
    for i in range(4_000_000):
        last = Rec(i)
    print(last.id)
