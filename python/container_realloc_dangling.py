class Item:
    def __init__(self, val: int) -> None:
        self.val = val


v = [Item(1)]
r = v[0]
for i in range(1000):
    v.append(Item(i))
w = [Item(7)]
r.val = 99
print(w[0].val)
