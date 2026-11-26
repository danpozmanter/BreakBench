import std::io;

faultdef MISSING;

fn int? cached_count(String name)
{
	if (name == "ada") return 4;
	return MISSING~;
}

fn int main(String[] args)
{
	int? cached = cached_count(args[1]);
	int count = cached ?? 0 + 1; // CONTROL! int count = (cached ?? 0) + 1;
	io::printn(count);
	return 0;
}
