import std::io;

struct Rec
{
	long value;
	long[3] pad;
}

fn int main(String[] args)
{
	Rec* a = mem::new(Rec);
	a.value = 1234;
	Rec* b = a;
	free(a); // BREAK!
	for (int i = 0; i < 16; i++)
	{
		Rec* c = mem::new(Rec);
		c.value = 6666;
	}
	io::printfn("%d", b.value);
	return 0;
}
