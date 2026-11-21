import std::io;

fn long walk(long n)
{
	if (n == 0) return 0;
	return (walk(n - 1) * 31 + n) % 1_000_000_007;
}

fn int main(String[] args)
{
	io::printfn("%d", walk(args[1].to_long()!!));
	return 0;
}
