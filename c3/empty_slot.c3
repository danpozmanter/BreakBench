import std::io;

struct User
{
	String name;
}

fn int main(String[] args)
{
	User[3] users;
	users[1] = { "bob" };
	users[2] = { "carol" };
	io::printfn("%d", users[0].name.len); // CONTROL! if (users[0].name.ptr == null) { io::printn("missing"); } else { io::printfn("%d", users[0].name.len); }
	return 0;
}
