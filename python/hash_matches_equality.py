from typing import override


class Point:
    def __init__(self, x: int, y: int, label: str) -> None:
        self.x, self.y, self.label = x, y, label

    @override
    def __eq__(self, other: object) -> bool:
        if not isinstance(other, Point):
            return NotImplemented
        return self.x == other.x and self.y == other.y


print(len({Point(1, 2, "a"), Point(1, 2, "b")}))
