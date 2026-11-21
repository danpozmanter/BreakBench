import std::io;

fn long total(long a, long b)
{
	return // CONTROL! return a + b;
		a + b; // BREAK!
}

fn int main(String[] args)
{
	io::printn(total(2, 3));
	return 0;
}
