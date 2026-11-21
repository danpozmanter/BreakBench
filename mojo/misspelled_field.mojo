@fieldwise_init
struct Config(Copyable, Movable):
    var color: String


def main():
    var cfg = Config("blue")
    cfg.colour = "red"  # BREAK!
    print(cfg.color)
