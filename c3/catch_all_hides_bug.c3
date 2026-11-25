import std::io;

fn int? parse_order(String line)
{
	String[] parts = line.split(mem, ",");
	return parts[2].to_int(); // BREAK!
	// CONTROL! return parts[1].to_int();
}

fn int main(String[] args)
{
	int? qty = parse_order("widget,5");
	if (catch qty)
	{
		io::printn("invalid order");
		return 0;
	}
	io::printn(qty);
	return 0;
}
