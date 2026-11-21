from enum import Enum


class Color(Enum):
    RED = 0
    GREEN = 1
    BLUE = 2


def name(c: Color) -> str:
    match c:
        case Color.RED:
            return "red"
        case Color.GREEN:
            return "green"
        case Color.BLUE:
            return "blue"


print(name(7))
