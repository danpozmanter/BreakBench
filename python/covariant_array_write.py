class Animal:
    def sound(self):
        return "?"


class Dog(Animal):
    def sound(self):
        return "woof"


class Cat(Animal):
    def sound(self):
        return "meow"


dogs: list[Dog] = [Dog()]
animals: list[Animal] = dogs
animals[0] = Cat()
print(dogs[0].sound())
