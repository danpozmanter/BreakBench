import std::io;

fn int main(String[] args)
{
	// to_int answers an Optional, so the number is reached only through a check.
	if (try n = args[1].to_int())
	{
		io::printfn("%d", n + 1);
	}
	else
	{
		io::printn("invalid");
	}
	return 0;
}
