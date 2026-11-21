import std::io;

fn int main(String[] args)
{
	bool a = args[1].to_int()!! != 0;
	bool b = true;
	String r = "unset";
	if (a) // BREAK!
		if (b) r = "both"; // BREAK!
	else // BREAK!
		r = "not a"; // BREAK!
	// CONTROL! if (a) { if (b) r = "both"; } else { r = "not a"; }
	io::printn(r);
	return 0;
}
