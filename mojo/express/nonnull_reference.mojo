# LEVEL: LANGUAGE

@fieldwise_init
struct Config(Copyable, Movable):
    var name: String


def main():
    var c = Config("app")
    var missing: Config = None  # REJECT!
    print(c.name)
