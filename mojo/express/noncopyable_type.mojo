# LEVEL: LANGUAGE

struct Handle(Movable):
    var fd: Int

    def __init__(out self, fd: Int):
        self.fd = fd


def main():
    var h = Handle(3)
    var copied = h.copy() # REJECT!
    var moved = h^
    print(moved.fd)
