import std::io;

fn int main(String[] args)
{
	long a = args[1].to_long()!!;
	long b = args[2].to_long()!!;
	io::printfn("%d", a / b); // CONTROL! io::printfn("%d", (0 - (ulong)a) / (0 - (ulong)b));
	return 0;
}
