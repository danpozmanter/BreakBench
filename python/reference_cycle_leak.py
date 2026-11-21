import sys


class Node:
    def __init__(self):
        self.next = None
        self.payload = bytearray(2048)


class Obj:
    def __init__(self):
        self.payload = bytearray(2048)
        self.callback = None


total = 0
for _ in range(int(sys.argv[1])):
    a = Node()
    b = Node()
    a.next = b
    b.next = a
    o = Obj()
    o.callback = lambda: len(o.payload)
    total += o.callback()
print("unreachable" if total < 0 else "done")
