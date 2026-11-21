@fieldwise_init
struct Color(Copyable, Movable):
    var value: Int


def name(c: Color) -> String:
    if c.value == 0:
        return "red"
    if c.value == 1:
        return "green"
    return "blue"


def main():
    var c = Color(1)
    print(name(7)) # BREAK!
    print(name(c))
