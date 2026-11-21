class Dog
  def sound = "woof"
end

class Cat
  def sound = "meow"
end

dogs = [Dog.new]
animals = dogs
animals[0] = Cat.new
puts dogs[0].sound
