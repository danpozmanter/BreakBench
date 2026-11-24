import std::io;

struct User
{
	String name;
}

struct Session
{
	User* user;
}

fn void logout(Session* session)
{
	session.user = null;
}

fn int main(String[] args)
{
	User alice = { "alice" };
	Session session = { &alice };
	if (session.user != null)
	{
		logout(&session); // CONTROL! io::printfn("%d", session.user.name.len);
		io::printfn("%d", session.user.name.len); // CONTROL! logout(&session);
	}
	return 0;
}
