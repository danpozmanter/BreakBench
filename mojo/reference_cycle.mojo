from std.memory import ArcPointer
from std.sys import argv


struct Node(Movable):
    var data: List[UInt8]
    var other: Optional[ArcPointer[Node]]

    def __init__(out self):
        self.data = List[UInt8](length=4096, fill=1)
        self.other = None


def main() raises:
    var n = atol(argv()[1])
    for _ in range(n):
        var parent = ArcPointer(Node())
        var child = ArcPointer(Node())
        parent[].other = child
        child[].other = parent
        # CONTROL! child[].other = None
    print("done")
