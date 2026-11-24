import std::io;

fn int main(String[] args)
{
	double x = args[1].to_double()!!;
	double y = args[2].to_double()!!;
	double a = x + y;
	io::printn(a == 0.3 ? "equal" : "not equal"); // CONTROL! io::printn(a - 0.3 < 1e-9 && 0.3 - a < 1e-9 ? "equal" : "not equal");
	return 0;
}
