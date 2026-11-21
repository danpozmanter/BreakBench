interface Animal {
	sound() string
}

struct Dog {}

struct Cat {}

fn (d Dog) sound() string {
	return 'woof'
}

fn (c Cat) sound() string {
	return 'meow'
}

fn main() {
	mut dogs := [Dog{}]
	mut animals := []Animal(dogs) // BREAK!
	animals[0] = Cat{} // BREAK!
	_ = Cat{}.sound()
	dogs[0] = Dog{}
	println(dogs[0].sound())
}
