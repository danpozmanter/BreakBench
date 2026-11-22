import std::io;

faultdef MISSING;

fn String? find_name(long id)
{
	if (id == 1) return "alice";
	return MISSING~;
}

fn int main(String[] args)
{
	String? name = find_name(args[1].to_long()!!);
	io::printfn("hello, %s", name); // CONTROL! io::printfn("hello, %s", name ?? "nobody");
	return 0;
}
