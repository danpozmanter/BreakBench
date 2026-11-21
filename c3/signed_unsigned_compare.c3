import std::io;

fn int main(String[] args)
{
	int[3] xs = { 1, 2, 3 };
	long i = args[1].to_long()!!;
	if (i < xs.len)
	{
		io::printn("less");
	}
	else
	{
		io::printn("not less");
	}
	return 0;
}
