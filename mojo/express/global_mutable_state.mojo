# LEVEL: LANGUAGE

var plain = 0 # REJECT!


@fieldwise_init
struct Counter(Copyable, Movable):
    var n: Int

    def hit(mut self):
        self.n += 1


def main():
    var c = Counter(0)
    c.hit()
    c.hit()
    print(c.n)
