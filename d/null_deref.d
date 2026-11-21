import std.conv, std.stdio;

class User
{
    string name;
    this(string n) { name = n; }
}

User findUser(long id) { return id == 1 ? new User("alice") : null; }

void main(string[] args)
{
    auto u = findUser(args[1].to!long);
    writeln(u.name.length);
}
