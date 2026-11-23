from dataclasses import dataclass


@dataclass
class Point:
    x: int
    y: int


ps = sorted([Point(3, 4), Point(1, 2)])  # CONTROL! ps = sorted([Point(3, 4), Point(1, 2)], key=lambda p: (p.x, p.y))
print(ps[0].x)
