struct Dog { id: i64 }
struct Cat { id: i64 }
enum Animal { DogVariant { id: i64 }, CatVariant { id: i64 } }

fn sound(d: Dog) -> const u8[:] { "woof" }
fn sound(c: Cat) -> const u8[:] { "meow" }

fn main() {
    var dogs: Dog[>..] = [];
    dogs.push(Dog { id: 0 });
    let animals: Animal[>..] = dogs; // BREAK!
    animals[0] = Animal.CatVariant { id: 1 }; // BREAK!
    print(sound(dogs[0]));
}
