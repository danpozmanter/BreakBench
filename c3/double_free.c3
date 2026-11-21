import std::io;

struct Rec
{
	long value;
	long[3] pad;
}

fn int main(String[] args)
{
	Rec* a = mem::new(Rec);
	free(a);
	free(a);
	Rec* x = mem::new(Rec);
	Rec* y = mem::new(Rec);
	x.value = 1;
	y.value = 2;
	io::printfn("%d", x.value);
	return 0;
}
