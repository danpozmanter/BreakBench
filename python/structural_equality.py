from dataclasses import dataclass


@dataclass
class P:
    x: int
    y: int


a = P(1, 2)
b = P(1, 2)
print("equal" if a == b else "different")
