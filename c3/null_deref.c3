import std::io;

struct User
{
	String name;
}

User alice = { "alice" };

fn User* find_user(long id)
{
	return id == 1 ? &alice : null;
}

fn int main(String[] args)
{
	User* u = find_user(args[1].to_long()!!);
	io::printfn("%d", u.name.len);
	return 0;
}
