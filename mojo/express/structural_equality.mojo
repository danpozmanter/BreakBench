# LEVEL: LANGUAGE

@fieldwise_init
struct P(Copyable, Movable, Equatable):
    var x: Int
    var y: Int


def main():
    var a = P(1, 2)
    var b = P(1, 2)
    print("equal" if a == b else "different")
