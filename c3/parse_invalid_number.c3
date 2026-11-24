import std::io;

fn int main(String[] args)
{
	int n = args[1].to_int()!!; // CONTROL! if (try n = args[1].to_int()) { io::printfn("%d", n + 1); } else { io::printn("invalid"); }
	io::printfn("%d", n + 1); // BREAK!
	return 0;
}
