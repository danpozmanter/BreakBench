@fieldwise_init
struct Dog(Copyable, Movable):
    var id: Int

    def sound(self) -> String:
        return "woof"


@fieldwise_init
struct Cat(Copyable, Movable):
    var id: Int

    def sound(self) -> String:
        return "meow"


from std.utils import Variant


def main():
    var dogs = [Dog(0)]
    var animals: List[Variant[Dog, Cat]] = dogs  # BREAK!
    animals[0] = Cat(1)  # BREAK!
    print(dogs[0].sound())
