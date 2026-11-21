abstract type Animal end
struct Dog <: Animal end
struct Cat <: Animal end
sound(::Dog) = "woof"
sound(::Cat) = "meow"

function main()
    dogs = [Dog()]
    animals = dogs
    animals[1] = Cat()
    println(sound(dogs[1]))
end

main()
