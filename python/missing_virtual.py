from typing import override


class Shape:
    def area(self) -> int:
        return 0

    def describe(self) -> str:
        return f"area {self.area()}"


class Square(Shape):
    @override
    def area(self) -> int:
        return 4


print(Square().describe())
