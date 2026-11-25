trait Shape:
    def area(self) -> Int:
        return 0

    def describe(self) -> String:
        return "area " + String(self.area())


@fieldwise_init
struct Square(Copyable, Movable, Shape):
    var side: Int

    def area(self) -> Int:
        return 4


def main():
    print(Square(2).describe())
