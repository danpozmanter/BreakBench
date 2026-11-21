import std::io;

fn int main(String[] args)
{
	int s = args[1].to_int()!!;
	ulong one = 1;
	io::printfn("%d", one << s);
	return 0;
}
