import std::io;

enum Color
{
	RED,
	GREEN,
	BLUE,
}

fn String name(Color c)
{
	switch (c)
	{
		case RED: return "red";
		case GREEN: return "green";
		case BLUE: return "blue";
	}
}

fn int main(String[] args)
{
	Color c = GREEN;
	io::printn(name(7)); // BREAK!
	io::printn(name(c));
	return 0;
}
