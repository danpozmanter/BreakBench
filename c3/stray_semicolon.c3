import std::io;

fn String size(int n)
{
	String label = "small";
	if (n > 5); // CONTROL! if (n > 5)
	{
		label = "big";
	}
	return label;
}

fn int main(String[] args)
{
	io::printn(size(args[1].to_int()!!));
	io::printn(size(args[2].to_int()!!));
	return 0;
}
