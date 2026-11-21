@fieldwise_init
struct Rec(Copyable, Movable):
    var value: Int


def main():
    var a = Rec(1234)
    var b = a.copy()
    _ = a^
    var c = Rec(6666)
    _ = c^
    print(b.value)
