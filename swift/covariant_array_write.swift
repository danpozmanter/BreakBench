class Animal { func sound() -> String { "?" } }
class Dog: Animal { override func sound() -> String { "woof" } }
class Cat: Animal { override func sound() -> String { "meow" } }

let dogs: [Dog] = [Dog()]
var animals: [Animal] = dogs
animals[0] = Cat()
print(dogs[0].sound())
