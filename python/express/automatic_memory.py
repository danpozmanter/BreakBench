# LEVEL: LANGUAGE


class Rec:
    def __init__(self, id, data):
        self.id = id
        self.data = data


last = Rec(0, bytearray())
for i in range(4_000_000):
    last = Rec(i, bytearray(1016))
print(last.id)
