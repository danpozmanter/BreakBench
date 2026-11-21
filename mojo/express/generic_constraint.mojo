# LEVEL: LANGUAGE

@fieldwise_init
struct Point(Copyable, Movable):
    var x: Int
    var y: Int


def main():
    var xs = [3, 1, 2]
    sort(xs)
    var ps = [Point(1, 2)] # REJECT!
    sort(ps) # REJECT!
    print(xs[0])
