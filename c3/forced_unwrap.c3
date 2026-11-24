import std::io;

faultdef MISSING;

fn int? find(int id)
{
	if (id == 1) return 36;
	return MISSING~;
}

fn int main(String[] args)
{
	io::printn("before");
	io::printn(find(2)!! + 1); // CONTROL! if (try a = find(2)) { io::printn(a + 1); } else { io::printn("missing"); }
	return 0;
}
