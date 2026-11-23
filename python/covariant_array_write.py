from typing import override


class Animal:
    def sound(self) -> str:
        return "?"


class Dog(Animal):
    @override
    def sound(self) -> str:
        return "woof"


class Cat(Animal):
    @override
    def sound(self) -> str:
        return "meow"


dogs: list[Dog] = [Dog()]
animals: list[Animal] = dogs  # CONTROL! animals: list[Animal] = list(dogs)
animals[0] = Cat()
print(dogs[0].sound())
