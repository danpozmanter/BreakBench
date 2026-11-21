import std::io;

fn int main(String[] args)
{
	int n = args[1].to_int()!!;
	String name;
	switch (n)
	{
		case 1:
			name = "one";
		case 2:
			name = "two";
		default:
			name = "other";
	}
	io::printn(name);
	return 0;
}
