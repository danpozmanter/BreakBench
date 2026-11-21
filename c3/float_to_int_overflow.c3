import std::io;

fn int main(String[] args)
{
	double x = args[1].to_double()!!;
	long v = (long)x;
	io::printfn("%d", v);
	return 0;
}
