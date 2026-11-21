# LEVEL: LANGUAGE

@fieldwise_init
struct P(Copyable, Movable):
    var x: Int


def main():
    var a = P(1)
    var b = a.copy()
    b.x = 9
    print(a.x)
