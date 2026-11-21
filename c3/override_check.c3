import std::io;

interface Shape
{
	fn String describe();
}

struct Circle (Shape)
{
	int r;
}

fn String Circle.descibe(&self) @dynamic => "circle"; // CONTROL! fn String Circle.describe(&self) @dynamic => "circle";

fn int main(String[] args)
{
	Circle c = { 1 };
	Shape s = &c;
	io::printn(s.describe());
	return 0;
}
