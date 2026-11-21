package main

import "core:fmt"

Dog :: struct {}
Cat :: struct {}
Animal :: union { Dog, Cat }

dog_sound :: proc(d: Dog) -> string { return "woof" }
cat_sound :: proc(c: Cat) -> string { return "meow" }

main :: proc() {
	dogs: [dynamic]Dog
	append(&dogs, Dog{})
	animals: [dynamic]Animal = dogs // BREAK!
	animals[0] = Cat{} // BREAK!
	_ = cat_sound(Cat{})
	fmt.println(dog_sound(dogs[0]))
}
