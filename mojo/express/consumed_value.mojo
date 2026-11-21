# LEVEL: LANGUAGE

struct Handle(Movable):
    var name: String

    def __init__(out self, name: String):
        self.name = name


def close(var h: Handle) -> String:
    return h.name


def main():
    var h = Handle("log")
    var name = close(h^)
    print(h.name)  # REJECT!
    print("closed" if name == "log" else "open")
