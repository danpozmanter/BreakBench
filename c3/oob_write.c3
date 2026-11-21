import std::io;

struct Frame
{
	int[4] buf;
	int guard;
}

fn int main(String[] args)
{
	Frame f = { .guard = 7 };
	int idx = args[1].to_int()!!;
	f.buf[idx] = 99;
	io::printfn("%d", f.guard);
	return 0;
}
