import std::io;

fn int main(String[] args)
{
	int v = args[1].to_int()!!;
	char b = (char)v;
	io::printfn("%d", b);
	return 0;
}
