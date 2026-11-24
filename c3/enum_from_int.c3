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
	Color c = (Color)n; // CONTROL! if (n < 0 || n > 2) { io::printn("invalid"); return 0; }
	io::printn(c); // CONTROL! io::printn((Color)n);
	return 0;
}
