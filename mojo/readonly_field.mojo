@fieldwise_init
struct Config(Copyable, Movable):
    var port: Int


def main():
    var c = Config(8080)
    c.port = 1
    print(c.port)
