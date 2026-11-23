import sys


class Node:
    __slots__ = ("value", "next")

    def __init__(self, value: int, next: "Node | None") -> None:
        self.value = value
        self.next = next


def build_and_release(n: int) -> int:
    head: Node | None = None
    for i in range(n):
        head = Node(i, head)
    return head.value if head else 0


build_and_release(int(sys.argv[1]))
print("done")
