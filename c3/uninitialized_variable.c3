import std::io;

fn int main(String[] args)
{
	int n = args[1].to_int()!!;
	int x; // CONTROL! int x = 0;
	if (n > 5) x = 10;
	io::printfn("%d", x);
	return 0;
}
