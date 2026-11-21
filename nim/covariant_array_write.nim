type
  Animal = ref object of RootObj
  Dog = ref object of Animal
  Cat = ref object of Animal

method sound(a: Animal): string {.base.} = "?"
method sound(d: Dog): string = "woof"
method sound(c: Cat): string = "meow"

var dogs: seq[Dog] = @[Dog()]
var animals: seq[Animal] = dogs # BREAK!
animals[0] = Cat() # BREAK!
echo dogs[0].sound()
