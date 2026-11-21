from std.sys import argv


@fieldwise_init
struct Node(Copyable, Movable):
    var value: Int
    var next: Int


def build_and_release(n: Int) -> Int:
    var nodes = List[Node]()
    var head = -1
    for i in range(n):
        nodes.append(Node(i, head))
        head = len(nodes) - 1
    return nodes[head].value


def main() raises:
    _ = build_and_release(atol(argv()[1]))
    print("done")
