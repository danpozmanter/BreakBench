import std::io;

struct Shape
{
	int unused;
}

fn int Shape.area(&self) => 0;
fn String Shape.describe(&self) => string::tformat("area %d", self.area());

struct Square
{
	inline Shape shape;
}

fn int Square.area(&self) => 4;
// CONTROL! fn String Square.describe(&self) => string::tformat("area %d", self.area());

fn int main(String[] args)
{
	Square q;
	io::printn(q.describe());
	return 0;
}
