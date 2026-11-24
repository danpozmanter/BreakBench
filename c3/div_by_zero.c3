import std::io;

fn int main(String[] args)
{
	int d = args[1].to_int()!!;
	io::printfn("%d", 100 / d); // CONTROL! if (d == 0) { io::printn("cannot divide"); } else { io::printfn("%d", 100 / d); }
	return 0;
}
