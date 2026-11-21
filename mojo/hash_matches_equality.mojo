from std.collections import Set


@fieldwise_init
struct Point(Copyable, Movable, Hashable, Equatable):
    var x: Int
    var y: Int
    var label: String

    def __eq__(self, other: Self) -> Bool:
        return self.x == other.x and self.y == other.y


def main():
    var s = Set[Point]()
    s.add(Point(1, 2, "a"))
    s.add(Point(1, 2, "b"))
    print(len(s))
