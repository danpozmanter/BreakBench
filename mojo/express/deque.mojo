# LEVEL: STD

from std.collections import Deque


def main() raises:
    var d = Deque[Int]()
    d.append(1)
    d.appendleft(0)
    d.append(2)
    var front = d.popleft()
    var back = d.pop()
    print(front, back)
