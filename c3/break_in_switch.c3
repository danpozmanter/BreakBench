import std::io;

fn int total_until_stop(String[] codes)
{
	int total = 0;
	foreach (c : codes)
	{
		int code = c.to_int()!!;
		switch (code)
		{
			case 0:
				break; // CONTROL! return total;
			default:
				total += code;
		}
	}
	return total;
}

fn int main(String[] args)
{
	io::printfn("%d", total_until_stop(args[1..]));
	return 0;
}
