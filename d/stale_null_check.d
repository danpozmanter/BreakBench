import std.stdio;

class User
{
    string name;
    this(string n) { name = n; }
}

class Session
{
    User user;
    this(User u) { user = u; }
}

void logout(Session session) { session.user = null; }

void main()
{
    auto session = new Session(new User("alice"));
    if (session.user !is null)
    {
        logout(session); // CONTROL! writeln(session.user.name.length);
        writeln(session.user.name.length); // CONTROL! logout(session);
    }
}
