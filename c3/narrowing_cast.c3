import std::io;

fn int main(String[] args)
{
	int v = args[1].to_int()!!;
	// CONTROL! if (v < 0 || v > 255) { io::printn("out of range"); return 0; }
	char b = (char)v;
	io::printfn("%d", b);
	return 0;
}
