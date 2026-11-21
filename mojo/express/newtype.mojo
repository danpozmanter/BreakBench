# LEVEL: LANGUAGE

@fieldwise_init
struct Meters(Copyable, Movable):
    var v: Float64

    def __add__(self, o: Meters) -> Meters:
        return Meters(self.v + o.v)


@fieldwise_init
struct Seconds(Copyable, Movable):
    var v: Float64


def main():
    var total = Meters(2) + Meters(3)
    var wrong = Meters(2) + Seconds(3) # REJECT!
    print(total.v)
