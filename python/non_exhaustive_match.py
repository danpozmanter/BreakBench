import sys
from enum import Enum


class Color(Enum):
    RED = 0
    GREEN = 1
    BLUE = 2


def name(c):
    match c:
        case Color.RED:
            return "red"
        case Color.GREEN:
            return "green"


print(name(Color(int(sys.argv[1]))))
