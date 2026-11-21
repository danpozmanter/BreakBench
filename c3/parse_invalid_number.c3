import std::io;

fn int main(String[] args)
{
	int n = args[1].to_int()!!;
	io::printfn("%d", n + 1);
	return 0;
}
