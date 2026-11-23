import sys
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
        # CONTROL! case Color.BLUE:
            # CONTROL! return "blue"


print(name(Color(int(sys.argv[1]))))
