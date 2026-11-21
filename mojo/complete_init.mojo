@fieldwise_init
struct Config(Copyable, Movable):
    var timeout: Int
    var retries: Int


def main():
    var c = Config(5, 3)
    var partial = Config(5)  # BREAK!
    print(c.timeout, c.retries)
