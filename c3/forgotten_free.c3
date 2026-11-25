import std::io;

struct Rec
{
	char[4096] data;
}

Rec* last;

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	for (long i = 0; i < n; i++)
	{
		Rec* rec = mem::new(Rec);
		rec.data[..] = 1;
		last = rec;
		// CONTROL! free(rec);
	}
	io::printn("done");
	return 0;
}
