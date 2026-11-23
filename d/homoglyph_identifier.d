import std.stdio;

bool isAdmin(string user) { return user == "root"; }
bool isАdmin(string user) { return true; } // BREAK!

void main()
{
    string user = "guest";
    writeln(isAdmin("root") ? "admin" : "guest");
    writeln(isАdmin(user) ? "admin" : "guest"); // CONTROL! writeln(isAdmin(user) ? "admin" : "guest");
}
