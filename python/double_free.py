class Rec:
    def __init__(self, value: int) -> None:
        self.value = value


a: Rec | None = Rec(0)
a = None
a = None
x = Rec(1)
y = Rec(2)
print(x.value)
