import std::io;

enum Color
{
	RED,
	GREEN,
	BLUE,
}

fn String name(Color c)
{
	String s;
	switch (c)
	{
		case RED: s = "red";
		case GREEN: s = "green";
		// CONTROL! case BLUE: s = "blue";
	}
	return s;
}

fn int main(String[] args)
{
	Color c = (Color)args[1].to_int()!!;
	io::printfn("%s", name(c));
	return 0;
}
