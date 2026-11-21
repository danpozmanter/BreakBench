trait Shape:
    def describe(self) -> String:
        return "shape"


@fieldwise_init
struct Circle(Copyable, Movable, Shape):
    var r: Int

    def descibe(self) -> String: # CONTROL! def describe(self) -> String:
        return "circle"


def show[T: Shape](s: T):
    print(s.describe())


def main():
    show(Circle(1))
