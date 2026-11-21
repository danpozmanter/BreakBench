trait Animal {
    fn sound(&self) -> &'static str;
}

struct Dog;
struct Cat;

impl Animal for Dog {
    fn sound(&self) -> &'static str { "woof" }
}

impl Animal for Cat {
    fn sound(&self) -> &'static str { "meow" }
}

fn main() {
    let mut dogs: Vec<Box<Dog>> = vec![Box::new(Dog)];
    let animals: &mut Vec<Box<dyn Animal>> = &mut dogs; // BREAK!
    animals[0] = Box::new(Cat); // BREAK!
    let _ = Cat.sound();
    println!("{}", dogs[0].sound());
}
