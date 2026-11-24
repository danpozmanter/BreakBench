import std::io;

fn int main(String[] args)
{
	int s = args[1].to_int()!!;
	ulong one = 1;
	io::printfn("%d", one << s); // CONTROL! double r = 1; for (int i = 0; i < s; i++) r *= 2; io::printfn("%.0f", r);
	return 0;
}
