import std::io;

fn int main(String[] args)
{
	// to_long answers an Optional, so the number is reached only through a check.
	if (try n = args[1].to_long())
	{
		io::printfn("%d", n);
	}
	else
	{
		io::printn("invalid");
	}
	return 0;
}
