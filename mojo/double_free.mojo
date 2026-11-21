@fieldwise_init
struct Rec(Copyable, Movable):
    var value: Int


def main():
    var a = Rec(0)
    _ = a^
    _ = a^  # BREAK!
    var x = Rec(1)
    var y = Rec(2)
    _ = y^
    print(x.value)
