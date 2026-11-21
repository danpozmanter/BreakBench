import std::io;

fn int main(String[] args)
{
	int x = args[1].to_int()!!;
	bool even = x & 1 == 0; // BREAK!
	// CONTROL! bool even = (x & 1) == 0;
	io::printn(even ? "even" : "odd");
	return 0;
}
