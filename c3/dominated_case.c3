import std::io;

fn String describe(String s)
{
	switch (s)
	{
		case "circle": return "round"; // BREAK!
		case "circle": return "circle";
		default: return "other";
	}
}

fn int main(String[] args)
{
	io::printn(describe("circle"));
	return 0;
}
