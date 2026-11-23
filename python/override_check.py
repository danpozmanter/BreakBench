from typing import override


class Shape:
    def describe(self) -> str:
        return "shape"


class Circle(Shape):
    @override
    def descibe(self) -> str:  # CONTROL! def describe(self) -> str:
        return "circle"


s: Shape = Circle()
print(s.describe())
