import sys


class Node:
    __slots__ = ("value", "next")

    def __init__(self, value, next):
        self.value = value
        self.next = next


def build_and_release(n):
    head = None
    for i in range(n):
        head = Node(i, head)
    return head.value if head else 0


build_and_release(int(sys.argv[1]))
print("done")
