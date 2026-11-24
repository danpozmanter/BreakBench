import std::io;

fn int main(String[] args)
{
	double x = args[1].to_double()!!;
	long v = (long)x; // CONTROL! double v = x;
	io::printfn("%d", v); // CONTROL! io::printfn("%.0f", v);
	return 0;
}
