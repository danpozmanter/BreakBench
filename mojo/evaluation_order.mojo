@fieldwise_init
struct Counter(Copyable, Movable):
    var n: Int

    def next(mut self) -> Int:
        self.n += 1
        return self.n


def pair(a: Int, b: Int) -> String:
    return String(a) + " " + String(b)


def main():
    var c = Counter(0)
    print(pair(c.next(), c.next()))
