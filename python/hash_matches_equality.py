class Point:
    def __init__(self, x, y, label):
        self.x, self.y, self.label = x, y, label

    def __eq__(self, other):
        return self.x == other.x and self.y == other.y


print(len({Point(1, 2, "a"), Point(1, 2, "b")}))
