from std.sys import argv


@fieldwise_init
struct Color(ImplicitlyCopyable, Movable, Equatable):
    var value: Int
    comptime RED = Color(0)
    comptime GREEN = Color(1)
    comptime BLUE = Color(2)

    def __eq__(self, other: Self) -> Bool:
        return self.value == other.value


def name(c: Color) -> String:
    if c == Color.RED:
        return "red"
    elif c == Color.GREEN:
        return "green"
    # CONTROL! return "blue"


def main() raises:
    print(name(Color(atol(argv()[1]))))
