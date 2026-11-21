import std::io;

fn bool is_odd(long n)
{
	return n % 2 == 1;
}

fn int main(String[] args)
{
	io::printn(is_odd(args[1].to_long()!!) ? "odd" : "even");
	return 0;
}
