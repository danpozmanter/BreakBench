import std::io;

fn void show(double f) { io::printfn("%d", (long)f); }

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	show(n); // CONTROL! io::printfn("%d", n);
	return 0;
}
