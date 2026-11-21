import std::io;

struct Dog { int id; }
struct Cat { int id; }

fn String Dog.sound(&self) => "woof";
fn String Cat.sound(&self) => "meow";

fn int main(String[] args)
{
	Dog[1] dogs;
	any[] animals = dogs[..]; // BREAK!
	animals[0] = &&(Cat){}; // BREAK!
	io::printn(dogs[0].sound());
	return 0;
}
