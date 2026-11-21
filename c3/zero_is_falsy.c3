import std::io;

fn int main(String[] args)
{
	int? qty = args[1].to_int();
	bool present = false;
	if (qty) present = true; // BREAK!
	// CONTROL! if (try q = qty) present = true;
	if (present)
	{
		io::printfn("have %d", qty!!);
	}
	else
	{
		io::printn("missing");
	}
	return 0;
}
