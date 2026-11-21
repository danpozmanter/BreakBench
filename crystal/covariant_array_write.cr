abstract class Animal
  abstract def sound : String
end

class Dog < Animal
  def sound : String
    "woof"
  end
end

class Cat < Animal
  def sound : String
    "meow"
  end
end

dogs = [Dog.new]
animals : Array(Animal) = dogs # BREAK!
animals[0] = Cat.new # BREAK!
puts dogs[0].sound
