class Rec:
    def __init__(self, value):
        self.value = value


a = Rec(1234)
b = a
del a
c = Rec(6666)
print(b.value)
