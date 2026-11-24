import std::io;

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	io::printfn("%d", n + 1); // CONTROL! io::printfn("%d", (ulong)n + 1);
	return 0;
}
