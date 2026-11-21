import std::io;

enum Color
{
	RED,
	GREEN,
	BLUE,
}

fn int main(String[] args)
{
	io::printn("before");
	int n = args[1].to_int()!!;
	Color c = (Color)n;
	io::printn(c);
	return 0;
}
