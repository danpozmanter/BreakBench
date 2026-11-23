import sys


class Node:
    def __init__(self) -> None:
        self.data = bytearray(b"\x01" * 4096)
        self.other: Node | None = None


for _ in range(int(sys.argv[1])):
    parent = Node()
    child = Node()
    parent.other = child
    child.other = parent
print("done")
