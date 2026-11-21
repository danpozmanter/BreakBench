import std::io;

fn int main(String[] args)
{
	int x = args[1].to_int()!!;
	String label = "not one";
	if (x = 1) label = "one"; // BREAK!
	// CONTROL! if (x == 1) label = "one";
	io::printn(label);
	return 0;
}
