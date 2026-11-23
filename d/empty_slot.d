import std.stdio;

class User
{
    string name;
    this(string n) { name = n; }
}

void main()
{
    User[3] users;
    users[1] = new User("bob");
    users[2] = new User("carol");
    writeln(users[0].name.length);
}
