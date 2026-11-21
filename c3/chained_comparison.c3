import std::io;

fn int main(String[] args)
{
	int x = args[1].to_int()!!;
	bool inside = 1 < x < 3; // BREAK!
	// CONTROL! bool inside = 1 < x && x < 3;
	io::printn(inside ? "inside" : "outside");
	return 0;
}
