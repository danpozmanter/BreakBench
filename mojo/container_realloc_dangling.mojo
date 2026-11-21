@fieldwise_init
struct Item(Copyable, Movable):
    var val: Int


def main():
    var v: List[Item] = [Item(1)]
    ref r = v[0]
    for i in range(1000):
        v.append(Item(i))
    var w: List[Item] = [Item(7)]
    r.val = 99  # BREAK!
    print(w[0].val)
