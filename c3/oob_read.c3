import std::io;

struct Frame
{
	int[4] buf;
	int secret;
}

fn int main(String[] args)
{
	Frame f = { .buf = { 1, 2, 3, 4 }, .secret = 42 };
	int idx = args[1].to_int()!!;
	io::printfn("%d", f.buf[idx]);
	return 0;
}
